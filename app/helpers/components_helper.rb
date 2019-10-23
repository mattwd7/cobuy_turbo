# frozen_string_literal: true

module ComponentsHelper
  # extend ActiveSupport::Concern

  # included do
  #   Dir.entries("#{Rails.root}/app/views/components") do |filename|
  #     puts '!!!', filename
  #     next if filename =~ /^..?$/

  #     component_name = File.basename(filename, '.haml')[1..-1]
  #     define_method component_name do |*options, &block|
  #       component(component_name, *options, &block)
  #     end
  #   end
  # end

  Dir.entries("#{Rails.root}/app/views/components") { |filename| puts '!!!', filename }

  [:navigation].each do |component_name|
    puts '@@@', component_name
    Dir["#{Rails.root}/app/views/components"] { |filename| puts '###', filename }

    define_method component_name do |*options, &block|
      component(component_name, *options, &block)
    end
  end

  # def navigation
  #   component(:navigation)
  # end

  def component(name, *options, &block)
    render("components/#{name}", *options, &block)
  end
end
