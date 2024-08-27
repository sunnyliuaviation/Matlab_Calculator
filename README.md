## 製作方法 
### 進入 MATLAB
使用 MATLAB Online (basic)  
APPS → Design App → Blank App  
進入以下介面  
  
![image](https://github.com/sunnyliuaviation/Matlab_Calculator/blob/main/image/Design%20App.png)  
  
### 製作 GUI 介面  
**拉元件**    
計算機數字顯示: Edit Field (Numeric)，初值設為 0  
計算機按鍵: Button，輸入按鈕名稱  
完成後如下:   
  
![image](https://github.com/sunnyliuaviation/Matlab_Calculator/blob/main/image/GUI.png)  
  
### 按鈕 Callbacks 設定  
有動作的物件都可以寫一個針對該物件的 Callback function  
在按鈕元件上按右鍵 → Callbacks → Go to ButtonPushed callback  
  
![image](https://github.com/sunnyliuaviation/Matlab_Calculator/blob/main/image/Callbacks.png)  
  
接著會進入 Code View 畫面  
  
![image](https://github.com/sunnyliuaviation/Matlab_Calculator/blob/main/image/CodeView.png)  
  
**按鈕 0 ~ 9**  
```
Existingstring=app.EditField.Value;
if Existingstring=='0'
  app.EditField.Value='數字';
else
  newstring=('數字');
  textstring=strcat(Existingstring,newstring);
  app.EditField.Value=textstring;
end
```
**按鈕 + , - , * , / , ^** 
```
Existingstring=app.EditField.Value;
newstring=('字元')
textstring=strcat(Existingstring,newstring);
app.EditField.Value=textstring;
```
**按鈕 C (歸零)**  
```
app.EditField.Value=('0');
```
**按鈕 << (刪除)**
```
Existingstring=app.EditField.Value;
textstring=Existingstring(1:end-1);
app.EditField.Value=textstring;
```
**按鈕 =**
```
Existingstring=app.EditField.Value;
result=eval(Existingstring);
app.EditField.Value=num2str(result);
```
### 測試是否正常執行
Desidgn View → Run
