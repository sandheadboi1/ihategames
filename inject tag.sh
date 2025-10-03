#!/bin/bash
# Inject GA snippet after <head>

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-00KXXS3RBH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-00KXXS3RBH');
</script>
 in all HTML files

GA_SNIPPET='<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-00KXXS3RBH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('"'"'js'"'"', new Date());
  gtag('"'"'config'"'"', '"'"'G-00KXXS3RBH'"'"');
</script>
'

# Use | as delimiter and add literal newline
find ./ -name '*.html' -exec sed -i "s|<head>

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-00KXXS3RBH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-00KXXS3RBH');
</script>
|<head>

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-00KXXS3RBH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-00KXXS3RBH');
</script>
\n$GA_SNIPPET|" {} +
