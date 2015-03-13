def application(environ, start_response):
    status = '200 OK'
    output = '<h1>mod_wsgi Environment</h1>'
    output += '<table>'
    for k, v in sorted(environ.items()):
        output += '<tr><th>%s</th><td>%s</td></tr>' % (k, v)
    output += '</table>'

    response_headers = [('Content-type', 'text/html'),
                        ('Content-Length', str(len(output)))]
    start_response(status, response_headers)

    return [output]
