<h1>Travel Map🗺</h1>
This final project from Le Wagon Bootcamp finished in 2 weeks to create an app using <strong>Ruby On Rails<img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="25" height="25"/></strong>. <br>
It was built by <strong>MVC-pattern </strong>, implemented application <strong>authentication and authorization</strong> for security system and <strong>Calender</strong> method with <strong>Chat</strong> function.
Moreover, Map method with marker functions was built by <strong>Javascript<img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg" alt="javascript" width="25" height="25"/></strong>
<h3>Enjoy creating your own map, sharing experiences, and making travel-note with social network interactions!</h3>

<h2> 🌱 contributers </h2><a href="https://github.com/4moreno/travelmap/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=4moreno/travelmap" />
</a>
<br>
<div>
  Rails app generated with <a href="https://github.com/lewagon/rails-templates">lewagon/rails-templates </a>, created by the Le Wagon coding bootcamp<a href="https://www.lewagon.com/" target="blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/5470001?s=200&amp;v=4" width="25" height="25" alt="lewagon"></a>
</div>
contributers by <a href="https://contrib.rocks">contrib.rocks</a>

------------------------------------------------------------------------------------------------------------------------------------------------

<h3>How to start localhost</h3>

```
rails s
```
in another terminal

```
yarn build --watch
```


------------------------------------------------------------------------------------------------------------------------------------------------
<h3>Terminal-Command for progress before programming</h3>

```
bundle install
yarn install
rails db:migrate
```

implement seeds again (in seeds.rb file, adds 'puts "delete DB"' for destroying the previous seeds and replant seeds again)
```
rails db:seed:replant
```

<h3>compile SCSS </h3>

```
rake assets:precompile
``` 

------------------------------------------------------------------------------------------------------------------------------------------------
<a href="https://guides.rubyonrails.org/active_storage_overview.html">Active Storage</a>
uploading in a local disk-based storage

```
gem "image_processing", ">= 1.2" 
```
Active Storage uses databases active_storage_blobs, active_storage_variant_records and active_storage_attachments.
```
bin/rails active_storage:install
```
and migrate
```
bin/rails db:migrate
```
in config/environments/development.rb
```
config.active_storage.service = :local
```
Declare a Disk service in config/storage.yml
```
local:
  service: Disk
  root: <%= Rails.root.join("storage") %>
 ```
------------------------------------------------------------------------------------------------------------------------------------------------
