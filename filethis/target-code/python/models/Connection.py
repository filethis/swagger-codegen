#!/usr/bin/env python
"""
Copyright 2014 Wordnik, Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
"""
class Connection:
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        self.swaggerTypes = {
            'name': 'str',
            'id': 'int',
            'state': 'str',
            'enabled': 'bool',
            'info': 'str',
            'password': 'str',
            'username': 'str',
            'accountId': 'int',
            'validation': 'str',
            'period': 'str',
            'documentCount': 'int',
            'fetchAll': 'bool',
            'attemptDate': 'date-time',
            'checkedDate': 'date-time',
            'sourceId': 'int',
            'successDate': 'date-time'

        }


        #Human-readable name of the connection. Defaults to that of its source.
        self.name = None # str
        #The unique Id of the connection. Returned as a string. [RO]
        self.id = None # int
        #The current state of the connection. [RO]
        self.state = None # str
        #Whether fetches will be done for the connection not
        self.enabled = None # bool
        #Information concerning the connection that resulted from the last fetch. [RO]
        self.info = None # str
        #The connection source's site login password. Base64-encoded. [WO]
        self.password = None # str
        #The connection source's site login username. Base64-encoded. [WO]
        self.username = None # str
        #Unique Id of connection's account. Returned as a string. [RO]
        self.accountId = None # int
        #Whether the current connection source's site login credentials have been used successfully, or not. [RO]
        self.validation = None # str
        #The period of time between automatic fetches. [WO]
        self.period = None # str
        #The number of new documents downloaded during the last fetch. [RO]
        self.documentCount = None # int
        #Whether all documents should be fetched, or just any new ones
        self.fetchAll = None # bool
        #Date on which the next fetch attempt will happen. [RO]
        self.attemptDate = None # date-time
        #Date when last checked for new documents. [RO]
        self.checkedDate = None # date-time
        #Unique Id of connection's document source. Returned as a string. [RO]
        self.sourceId = None # int
        #Date of last successful fetch, whether it returned documents, or not. [RO]
        self.successDate = None # date-time
        