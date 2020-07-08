## Rails View Components

---
@snap[north span-100]
#### View whats now?
@snapend 
@ul[list-spaced-bullets]
- Joel Hawksley @ Github
- Inspired by React
- Rails 6.1
@ulend

--- 
@snap[north span-100]
#### Is this just another templating language?
@snapend
@ul[list-spaced-bullets]
- ## NO
- erb
- slim
- haml
@ulend

---
@snap[north span-100 text-05]
#### Sacffold Code
@snapend
```sh
rails new view_component_demo
```
```sh
rails generate scaffold Post title:string body:text
```

---
@snap[north span-100 text-05]
#### app/views/posts/_form.html.erb
@snapend
@code[html code-power](src/_form.html.erb)
@[1]

---
@snap[north span-100 text-05]
#### app/components/form_component.html.erb
@snapend
@code[html code-power](src/form_component.html.erb)
@[1]

---
@snap[north span-100 text-05]
#### app/components/form_component.rb
@snapend
@code[html code-power](src/form_component.rb)
@[1]
@[2-4]

---
@snap[north span-100 text-05]
#### app/views/posts/new.html.erb
@snapend
@code[html code-power](src/new.html.erb)
@[3-4]

---
@snap[north span-100 text-05]
#### app/views/posts/new_with_component.html.erb
@snapend
@code[html code-power](src/new_with_component.html.erb)
@[3-4]

---
@snap[north span-100 text-05]
#### Easy to use, must be difficult to set up.. right?
@snapend

```ruby
#Gemfile
gem 'view_component'
```

```ruby
#config/application.rb
require "view_component/engine"
```

---
@snap[north span-100 text-05]
#### Why View Components?
@snapend
@ul[list-spaced-bullets]
- Performance
- Reuse
- Testing
@ulend

---
@snap[north span-100 text-05]
#### Performance
@snapend
@code[html code-power](src/new_with_component_with_loop.html.erb)

---?image=assets/images/components_vs_partials.png&position=center&size=90% 90%
@snap[north span-100 text-05]
#### Performance
@snapend

---
@snap[north span-100 text-05]
#### Reuse
@snapend
@ul[list-spaced-bullets]
- Whereever you can use a partial, you can use a component.
- Previews make it easy to see what is already built
@ulend

---
@snap[north span-100 text-05]
#### Previews
@snapend
@code[ruby code-power](src/form_component_preview.rb)

---?image=assets/images/component_listing.png&position=center&size=90% 90%
@snap[north span-100 text-05]
#### Preview listing
@snapend

---?image=assets/images/component_preview.png&position=center&size=90% 90%
@snap[north span-100 text-05]
#### Form Component Preview
@snapend

---
@snap[north span-100 text-05]
#### Testing
@snapend
@code[ruby code-power](src/form_component_test.rb)
@[5]
@[6]
@[7]

---
@snap[north span-100 text-05]
#### Links
@snapend
[Joel Hawksley](https://hawksley.org)

[github/view_component](https://github.com/github/view_component)

[Rails 6.1 Component Documentation](https://edgeguides.rubyonrails.org/layouts_and_rendering.html#rendering-objects)