[
  {
    "name": "${app_name}",
    "image": "${app_image_repository}:${app_image_version}",
    "essential": true,
     "environment": [
      {
        "name": "PGHOST",
        "value": "${pghost}"
      },
      {
        "name": "PGDATABASE",
        "value": "${pgdatabase}"
      },
      {
        "name": "PGUSER",
        "value": "${pguser}"
      },
      {
        "name": "PGPASSWORD",
        "value": "${pgpassword}"
      },
      {
        "name": "PGSSLMODE",
        "value": "${pgsslmode}"
      }
    ],

    "portMappings": [
      {
        "containerPort": ${container_port
        }
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "${app_name}",
        "awslogs-region": "${region}",
        "awslogs-stream-prefix": "${app_name}"
      }
    }
  }
]
