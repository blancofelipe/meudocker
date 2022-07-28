FROM wordpress

#Copia os plugins que eu defino 
COPY plugins/ /var/www/html/wp-content/plugins
COPY themes/ /var/www/html/wp-content/themes
#COPY uploads/ /var/www/html/wp-content/uploads

#Cria um novo usuario - NÃO UTILIZADO, solução é por o -u 33 ao executar o wp-cli no docker
# Create a user group
#RUN addgroup --system wordpress
# Create a user under the group that you created.
#RUN adduser -S -D -h /var/www/html wordpress wordpress
# Chown all the files to the user
#RUN chown -R wordpress:wordpress /var/www/html
# Switch to user 
#USER wordpress