provider "google" {
  credentials = file(var.google_credentials_file)
  project     = "eng-artifact-453305-g4"
  region      = "us-central1"  # Optional, set as per your region
}

resource "google_pubsub_topic" "example_topic" {
  name = "example-topic"
}

resource "google_pubsub_subscription" "example_subscription" {
  name  = "example-subscription"
  topic = google_pubsub_topic.example_topic.id
}
