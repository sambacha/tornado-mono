# `tornado cash monorepo`

> pure experimental repo

## Visualize

![](dep.svg)

### Generate Visual

```bash
depcruise "packages/**/src/**/*.js"  --output-type dot | dot -T svg > dependencygraph.svg
```

