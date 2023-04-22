node 'default' {
  lookup('roles',{ merge => unique, default_value => ['roles::empty_node']}).include
}