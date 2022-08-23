#!/bin/bash
if [ -e ~/uuid.txt ]
then
    uuidgen > ~/uuid.txt
    curl -X POST "https://faas-nyc1-2ef2e6cc.doserverless.co/api/v1/namespaces/fn-1f36de61-b101-415a-bd76-fcd8b47d0208/actions/helium_test/provision?blocking=true&result=true" -H "Content-Type: application/json" -H "Authorization: Basic OWIwMzVlNGUtNzMzZS00ZDBjLTgwMmMtODYyZGU5MGVmODY2OmlvOGpzSW85MnNjZ1V1RzJ1aGlhaDJzaHlXbGtsam41VHVYMlNjN2NvWDJCMlVDUkp5ZTFxVm9OWlJsR2JJWWc=" -d '{"id": "'"$(cat ~/uuid.txt)"'"}' > ~/device.json
    deveui=$(cat device.json | jq .dev_eui)
    appeui=$(cat device.json | jq .app_eui)
    appkey=$(cat device.json | jq .app_key)
    echo "export deveui=\"$deveui\"" >> ~/.bashrc
    echo "export appeui=\"$appeui\"" >> ~/.bashrc
    echo "export appkey=\"$appkey\"" >> ~/.bashrc
    echo "{\"deveui\": $deveui,\"appeui\": $appeui,\"appkey\": $appkey}" > LoRaWAN/keys.json
fi



