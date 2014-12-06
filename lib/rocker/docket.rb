require "rocker/docket/version"
require 'erb'
require 'json'
require 'open-uri'

module Rocker
  module Docket
    class << self
      def build
        update unless File.exists? dockerfile
        write(dockerfile, ERB.new(File.read(template)).result(binding))
        exec "docker build -t rocker-docket #{dir}"
      end

      def template
        "#{File.join(File.dirname(__FILE__), 'Dockerfile.erb')}"
      end

      def update
        release = JSON.parse(releases_string)[0]
        assets_url = release['assets_url']
        tag = release['tag_name']
        download_url = JSON.parse(open(assets_url){|f| f.read }).detect{ |a| a['name'] =~ /rocket.*.tar.gz/ }['browser_download_url']
        if download_url == rocket_url 
          nil
        else
          write(rocket_url_file, download_url)
          tag
        end
      end

      def releases_string
        open("https://api.github.com/repos/coreos/rocket/releases"){ |f| f.read }
      end

      def dockerfile
        "#{dir}/Dockerfile"
      end

      def rocket_url
        File.read rocket_url_file if File.exists? rocket_url_file
      end

      def rocket_url_file 
        "#{dir}/rocket_url"
      end

      def dir
        "#{ENV['HOME']}/.rocker-docket"
      end

      private
      def write(file, string)
        File.open(file, 'w'){ |f| f.write(string) }
      end
    end
  end
end
