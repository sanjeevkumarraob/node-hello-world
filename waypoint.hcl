project = "node-hello-world"

app "node-hello-world" {

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "node-hello-world"
        tag   = "1"
        local = true
      }
    }
  }

  deploy {
    use "nomad" {
      // these options both default to the values shown, but are left here to
      // show they are configurable
      datacenter = "dc1"
      namespace  = "default"
    }
  }

}
