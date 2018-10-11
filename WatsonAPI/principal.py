
##Numero 1:
import watson_developer_cloud
import json

conversation = watson_developer_cloud.ConversationV1(
    username='d66aabf9-fd1d-460c-b827-4d5dfbfa87d6',
    password='M32F5Ocn4GFf',
    version='2018-09-20'
)

txtMsj = input("Escribir un mensaje: ")

##context = {}

response = conversation.message(
    workspace_id='834e8f0f-b69f-445c-a124-6323e38c6ad9',
    input={
        'text': txtMsj
    }
).get_result()

print(json.dumps(response, indent=2))




