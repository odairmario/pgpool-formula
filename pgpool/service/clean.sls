# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as pgpool with context %}

pgpool-service-clean-service-dead:
  service.dead:
    - name: {{ pgpool.service.name }}
    - enable: False
