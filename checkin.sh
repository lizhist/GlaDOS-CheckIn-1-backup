echo '------------------sign------------------'
checkin=`curl -H "cookie:${COOKIE}" -H 'content-type:application/json;charset=UTF-8' -d '{"token": "glados_network"}' -X POST 'https://glados.rocks/api/user/checkin'`
echo ''
echo ${checkin} | grep -Eo '"message":".*?"'
echo '-----------------status-----------------'
state=`curl -H "cookie:${COOKIE}" -X GET 'https://glados.rocks/api/user/status'`
echo ${state} | grep -Eo '"leftDays":".*?"'

