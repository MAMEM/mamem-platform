#Interaction SDK

##Stream names
| Stream name   | Stream type   | Description  |
| ------------- |-------------  | -------------|
| EMOTIVStream  | EEG           | The name of the EPOC2LSL plugin stream output |
| ???| EEG      | The name of the BEPlusLTM LSL data stream |
| ???| EyeTracker| The name of the IViewRedX LSL data stream |
| ???| GSR | Name of the GSR sensor stream |
| SSVEPEventStream | Event | The event stream which triggers the SSVEP recognition tasks and communicates their result|


#####SSVEPEventStream

| Event code    | Action   | Receiver  | Sender | Description |
|---|---|---|---|---|
| [1,2,3,...,9]  | Select item [1,2,3,..,9]| GazeTheWeb  | EEG-processing-toolbox (Matlab) | Output of the SSVEP recognition task, indicates which item to select|
| 100  | Trigger SSVEP recognition task | EEG-processing-toolbox (Matlab)  | GazeTheWeb | Triggers the SSVEP recognition task in Matlab|
