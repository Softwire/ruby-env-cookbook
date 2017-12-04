# ruby-env-cookbook

Use this cookbook to set up a ruby development environment!

## Supported Platforms

Vagrant with ubuntu

## Attributes

### MySQL attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['mysql']['service_name']</tt></td>
    <td>String</td>
    <td>The name of the MySQL service that is installed</td>
    <td><tt>default</tt></td>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['mysql']['version']</tt></td>
    <td>String</td>
    <td>The version of the MySQL service that is installed</td>
    <td><tt>5.5</tt></td>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['mysql']['port']</tt></td>
    <td>String</td>
    <td>The port on which the MySQL service is installed</td>
    <td><tt>3306</tt></td>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['mysql']['password']</tt></td>
    <td>String</td>
    <td>The password for the MySQL service that is installed</td>
    <td><tt>password</tt></td>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['mysql']['action']</tt></td>
    <td>Array</td>
    <td>The actions that will be run when the MySQL service that is installed</td>
    <td><tt>[:create, :start]</tt></td>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['mysql']['include_client']</tt></td>
    <td>Boolean</td>
    <td>If true, the MySQL client and development libraries will be installed</td>
    <td><tt>true</tt></td>
  </tr>
</table>

### RBEnv attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['rbenv']['user']</tt></td>
    <td>String</td>
    <td>The user for which this ruby is installed</td>
    <td><tt>vagrant</tt></td>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['rbenv']['version']</tt></td>
    <td>String</td>
    <td>The version of ruby to be installed</td>
    <td><tt>2.4.2</tt></td>
  </tr>
  <tr>
    <td><tt>['ruby_env_cookbook']['rbenv']['gems']</tt></td>
    <td>Array</td>
    <td>An array of gems to be installed</td>
    <td><tt>[{name: 'bundler', version: '1.16.0'}]</tt></td>
  </tr>
</table>

## Usage

### Recipes

Include `ruby-env-cookbook` recipes in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ruby-env-cookbook::apt]",
    "recipe[ruby-env-cookbook::mysql]",
    "recipe[ruby-env-cookbook::phantomjs]",
    "recipe[ruby-env-cookbook::rbenv]"
  ]
}
```

or in a vagrant environment:
```
chef.add_recipe 'chips::apt'
chef.add_recipe 'chips::mysql'
chef.add_recipe 'chips::phantomjs'
chef.add_recipe 'chips::rbenv'
```

## License and Authors

Author:: Daniel Waters (daniel.waters@softwire.com)
