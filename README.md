# manage-recalls-error-pages

This repo creates a docker image containing custom HTTP error pages, for the `manage-recalls` service to be used as per these [instructions].

A default-backend is served by nginx as a fall-back. This is typically when the sub-domain, for example `https://wrongdomain.cloud-platform.service.justice.gov.uk/`, isn't recognized. Otherwise, the default nginx page would show, which doesn't look professional.

This is a simplified version of the kubernetes/ingress-nginx [example].

## Usage

1. Create your custom HTTP error pages in the `rootfs/www` folder, following the existing `code`.`format` pattern.
1. Use `run.sh` to run the image locally, and `call.sh` to send http requests for the different error pages.
1. Commit your changes on a branch and open a pull request for review.

NB: This image can only respond with a single HTML file. So, if you want your custom error page to use other assets such as images, fonts, stylesheets, etc. you need to ensure that those are available at some fixed URLs, and hard-code those URLs into your error pages.

[instructions]: https://github.com/kubernetes/ingress-nginx/tree/master/docs/examples/customization/custom-errors
[example]: https://github.com/kubernetes/ingress-nginx/tree/master/images/custom-error-pages
