document.addEventListener('DOMContentLoaded', function () {
    // Conteúdo Markdown
    const markdownContent = `
# PHP-Prefixer
You may pin to the exact commit or the version.
uses: PHP-Prefixer/php-prefixer-build-action@v1.1.0`;

    document.getElementById('markdown-code').innerText = markdownContent;

    // Conteúdo YAML
    const yamlContent = `
- name: 'Cérebro e Pensamento'
  uses: PHP-Prefixer/php-prefixer-build-action@v1.1.0
  with:
    personal_access_token: \${{ secrets.PREFIXER_TOKEN }}
    project_id: \${{ secrets.PREFIXER_PROJECT_ID }}
    schema: '{"project-name": "Prefixed Project","namespaces-prefix": "PPP","global-scope-prefix": "PPP_"}'`;

    document.getElementById('yaml-code').innerText = yamlContent;
});
