python main.py --data_test RainHeavyTest  --ext img --scale 2  --data_range 1-200/1-100 --pre_train ../experiment/RCDNet_rain100L/model/model_best.pt --model RCDNet --test_only --save_results --save RCDNet_testRain100L
python main.py --data_test RainHeavyTest  --ext img --scale 2  --data_range 1-200/1-100 --pre_train ../experiment/RCDNet_rain100H/model/model_best.pt --model RCDNet --test_only --save_results --save RCDNet_testRain100H
python main.py --data_test RainHeavyTest  --ext img --scale 2  --data_range 1-200/1-100 --pre_train ../experiment/RCDNet_rain1400/model/model_best.pt --model RCDNet --test_only --save_results --save RCDNet_testRain1400