# fn-demo

> A tiny carrel function that deploys on every push.

The workflow builds the image, pushes it to ghcr.io and deploys it to the carrel function `demo`
with `NYCU-WinLab/carrel-deploy@v1`. The page shows the commit it was built from.
