
##Numero 1:
import watson_developer_cloud
import json

conversation = watson_developer_cloud.ConversationV1(
    username='d66aabf9-fd1d-460c-b827-4d5dfbfa87d6',
    password='M32F5Ocn4GFf',
    version='2018-07-10'
)

txtMsj = ""

while txtMsj != "bye":
    
    txtMsj = input(">> ")

    response = conversation.message(
        workspace_id='834e8f0f-b69f-445c-a124-6323e38c6ad9',
        input={
            'text': txtMsj
        }
    ).get_result()

    ##response -> object
    print(json.dumps(response, indent=2))
    
    




