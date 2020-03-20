resource "docker_image" "image_id" {
  name = "ghost:latest"
}


resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  name =  "blog"
  ports {
    internal = "2369"
    external = "80"
  }
}