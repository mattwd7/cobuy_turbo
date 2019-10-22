# frozen_string_literal: true

module ComponentsHelper
  def component(name, *options, &block)
    render("components/#{name}", *options, &block)
  end

  def navigation
    component(:navigation)
  end
  # included do
  #   Dir.entries("#{Rails.root}/app/views/components") do |filename|
  #     next if filename =~ /^..?$/

  #     component_name = File.basename(filename, '.haml')[1..-1]
  #     define_method component_name do |*options, &block|
  #       component(component_name, *options, &block)
  #     end
  #   end
  # end
end
