###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

# Auto-prefixing of CSS code with vendor prefix
activate :autoprefixer, browsers: ['last 2 versions', 'ie 8', 'ie 9']

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Pretty urls
activate :directory_indexes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :js_dir,     'assets/javascripts'
set :css_dir,    'assets/stylesheets'
set :images_dir, 'assets/images'

# Deploy in gh-pages branch
activate :deploy do |deploy|
  deploy.method       = :git
  deploy.branch       = 'gh-pages'
  deploy.build_before = true # always use --no-clean options
end

# I18n support
activate :i18n, :mount_at_root => :en

# Build-specific configuration
configure :build do
  activate :minify_html, remove_input_attributes: false
  activate :minify_css
  activate :minify_javascript
  activate :gzip
  activate :asset_hash

  # activate :sitemap, hostname: data.settings.site.url
  # activate :sitemap_ping do |config|
  #   config.host = "#{data.settings.site.url}"
  # end

  # activate :robots,
  #   rules: [{:user_agent => '*', :allow => %w(/)}],
  #   sitemap: data.settings.site.url+'sitemap.xml'

  # Use this for github.io gh-pages
  activate :relative_assets
  set :relative_links, true
end

helpers do
  def clean_from_i18n(url)
    parts = url.split('/').select { |p| p && p.size > 0 }
    parts.shift if langs.map(&:to_s).include?(parts[0])

    parts.join('/')
  end
end
