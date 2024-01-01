- name: Save Schema to File
  run: echo {"workflows": "framos500", "PPP": "vapo"} > schema.json

- name: Set Schema Variable
  run: echo "::set-env name=SCHEMA::$(cat schema.json | base64)"

- name: Debug Schema
  run: echo "Schema: ${{ env.SCHEMA }}"
