
package 'apache2' do
        action [:install]
end

service 'apache2' do
        action [:enable, :start]
end

file '/var/www/html/index.html' do
        content '
                <!doctype html>
                <title>Welcome Page</title>
                <style>
                body { text-align: center; padding: 150px; }
                h1 { font-size: 50px; }
                  body { font: 20px Helvetica, sans-serif; color: #333; }
                  article { display: block; text-align: left; width: 650px; margin: 0 auto; }
                  a { color: #dc8100; text-decoration: none; }
                  a:hover { color: #333; text-decoration: none; }
                </style>

                <article>
                <h2>Hello, Welcome to the training session on Chef!</h2>
 				<div>
                     <p>Chef is the most flexible and advanced tool for configuration management.</p>
                     <p>&mdash; Ganesh Palnitkar</p>
                </div>
                </article>
'
end
