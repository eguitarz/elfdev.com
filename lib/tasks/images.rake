require 'RMagick'
include Magick

namespace 'images' do
    task :resize, [:w, :h] do |t, args|
        image_dir = "#{Rails.root}/app/assets/images/"
        Dir.foreach("#{image_dir}/rmagick") do |file|
        	next unless file.to_s().match /\.[png|gif|jpg]/i
        	img = ImageList.new("#{image_dir}/rmagick/#{file}")
        	img.resize(args[:w].to_i, args[:h].to_i)
        	img.write("#{image_dir}/#{file}")
        	puts "Resized #{file} and write to #{image_dir}/#{file}"
        end
    end
end