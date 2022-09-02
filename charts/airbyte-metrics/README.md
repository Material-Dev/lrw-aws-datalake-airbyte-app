# metrics

![Version: 0.39.36](https://img.shields.io/badge/Version-0.39.36-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.40.3](https://img.shields.io/badge/AppVersion-0.40.3-informational?style=flat-square)

Helm chart to deploy airbyte-metrics

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| containerSecurityContext | object | `{}` |  |
| enabled | bool | `true` |  |
| env_vars | object | `{}` |  |
| extraContainers | list | `[]` |  |
| extraEnv | list | `[]` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| global.database.host | string | `"example.com"` |  |
| global.database.port | string | `"5432"` |  |
| global.database.secretName | string | `""` |  |
| global.database.secretValue | string | `""` |  |
| global.deploymentMode | string | `"oss"` |  |
| global.extraContainers | list | `[]` |  |
| global.serviceAccountName | string | `"placeholderServiceAccount"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"airbyte/metrics-reporter"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits | object | `{}` |  |
| resources.requests | object | `{}` |  |
| secrets | object | `{}` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)