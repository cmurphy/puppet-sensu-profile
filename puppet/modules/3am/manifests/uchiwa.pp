class 3am::uchiwa {

  include ::uchiwa

  sensu::check { 'check_uchiwa-health':
    command     => '/etc/sensu/plugins/plugins/uchiwa/uchiwa-health.rb',
    handlers    => 'default',
    subscribers => 'uchiwa'
  }

}
