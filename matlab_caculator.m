classdef matlab_caculator_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure   matlab.ui.Figure
        Button_17  matlab.ui.control.Button
        cButton    matlab.ui.control.Button
        Button_16  matlab.ui.control.Button
        Button_15  matlab.ui.control.Button
        Button_14  matlab.ui.control.Button
        Button_13  matlab.ui.control.Button
        Button_12  matlab.ui.control.Button
        Button_11  matlab.ui.control.Button
        Button_10  matlab.ui.control.Button
        Button_9   matlab.ui.control.Button
        Button_8   matlab.ui.control.Button
        Button_7   matlab.ui.control.Button
        Button_6   matlab.ui.control.Button
        Button_5   matlab.ui.control.Button
        Button_4   matlab.ui.control.Button
        Button_3   matlab.ui.control.Button
        Button_2   matlab.ui.control.Button
        Button     matlab.ui.control.Button
        EditField  matlab.ui.control.EditField
    end

    
    methods (Access = public)
        
        function results = func(app)
            
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: Button
        function ButtonPushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='1';
            else
            newstring=('1');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
 end
        end

        % Button pushed function: Button_2
        function Button_2Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='2';
            else
            newstring=('2');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_4
        function Button_4Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='3';
            else
            newstring=('3');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_5
        function Button_5Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='4';
            else
            newstring=('4');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_6
        function Button_6Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='5';
            else
            newstring=('5');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_8
        function Button_8Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='6';
            else
            newstring=('6');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_9
        function Button_9Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='7';
            else
            newstring=('7');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_10
        function Button_10Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='8';
            else
            newstring=('8');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_12
        function Button_12Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='9';
            else
            newstring=('9');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_14
        function Button_14Pushed(app, event)
            Existingstring=app.EditField.Value;
            if Existingstring=='0'
               app.EditField.Value='0';
            else
            newstring=('0');
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
end
        end

        % Button pushed function: Button_3
        function Button_3Pushed(app, event)
            Existingstring=app.EditField.Value;
            newstring=('+')
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
        end

        % Button pushed function: Button_7
        function Button_7Pushed(app, event)
            Existingstring=app.EditField.Value;
            newstring=('-')
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
        end

        % Button pushed function: Button_11
        function Button_11Pushed(app, event)
            Existingstring=app.EditField.Value;
            newstring=('*')
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
        end

        % Button pushed function: Button_15
        function Button_15Pushed(app, event)
            Existingstring=app.EditField.Value;
            newstring=('/')
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
        end

        % Button pushed function: Button_13
        function Button_13Pushed(app, event)
            Existingstring=app.EditField.Value;
            newstring=('^')
            textstring=strcat(Existingstring,newstring);
            app.EditField.Value=textstring;
        end

        % Button pushed function: cButton
        function cButtonPushed(app, event)
            app.EditField.Value=('0');
        end

        % Button pushed function: Button_17
        function Button_17Pushed(app, event)
            Existingstring=app.EditField.Value;
            textstring=Existingstring(1:end-1);
            app.EditField.Value=textstring;
        end

        % Button pushed function: Button_16
        function Button_16Pushed(app, event)
            Existingstring=app.EditField.Value;
            result=eval(Existingstring);
            app.EditField.Value=num2str(result);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 421 600];
            app.UIFigure.Name = 'MATLAB App';

            % Create EditField
            app.EditField = uieditfield(app.UIFigure, 'text');
            app.EditField.HorizontalAlignment = 'right';
            app.EditField.FontSize = 40;
            app.EditField.Position = [37 466 350 89];
            app.EditField.Value = '0';

            % Create Button
            app.Button = uibutton(app.UIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.FontSize = 40;
            app.Button.Position = [38 368 73 68];
            app.Button.Text = '1';

            % Create Button_2
            app.Button_2 = uibutton(app.UIFigure, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Button_2Pushed, true);
            app.Button_2.FontSize = 40;
            app.Button_2.Position = [130 368 73 68];
            app.Button_2.Text = '2';

            % Create Button_3
            app.Button_3 = uibutton(app.UIFigure, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_3Pushed, true);
            app.Button_3.FontSize = 40;
            app.Button_3.Position = [314 368 73 68];
            app.Button_3.Text = '+';

            % Create Button_4
            app.Button_4 = uibutton(app.UIFigure, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Button_4Pushed, true);
            app.Button_4.FontSize = 40;
            app.Button_4.Position = [224 368 73 68];
            app.Button_4.Text = '3';

            % Create Button_5
            app.Button_5 = uibutton(app.UIFigure, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Button_5Pushed, true);
            app.Button_5.FontSize = 40;
            app.Button_5.Position = [38 278 73 68];
            app.Button_5.Text = '4';

            % Create Button_6
            app.Button_6 = uibutton(app.UIFigure, 'push');
            app.Button_6.ButtonPushedFcn = createCallbackFcn(app, @Button_6Pushed, true);
            app.Button_6.FontSize = 40;
            app.Button_6.Position = [130 278 73 68];
            app.Button_6.Text = '5';

            % Create Button_7
            app.Button_7 = uibutton(app.UIFigure, 'push');
            app.Button_7.ButtonPushedFcn = createCallbackFcn(app, @Button_7Pushed, true);
            app.Button_7.FontSize = 40;
            app.Button_7.Position = [314 278 73 68];
            app.Button_7.Text = '-';

            % Create Button_8
            app.Button_8 = uibutton(app.UIFigure, 'push');
            app.Button_8.ButtonPushedFcn = createCallbackFcn(app, @Button_8Pushed, true);
            app.Button_8.FontSize = 40;
            app.Button_8.Position = [224 278 73 68];
            app.Button_8.Text = '6';

            % Create Button_9
            app.Button_9 = uibutton(app.UIFigure, 'push');
            app.Button_9.ButtonPushedFcn = createCallbackFcn(app, @Button_9Pushed, true);
            app.Button_9.FontSize = 40;
            app.Button_9.Position = [38 187 73 68];
            app.Button_9.Text = '7';

            % Create Button_10
            app.Button_10 = uibutton(app.UIFigure, 'push');
            app.Button_10.ButtonPushedFcn = createCallbackFcn(app, @Button_10Pushed, true);
            app.Button_10.FontSize = 40;
            app.Button_10.Position = [130 187 73 68];
            app.Button_10.Text = '8';

            % Create Button_11
            app.Button_11 = uibutton(app.UIFigure, 'push');
            app.Button_11.ButtonPushedFcn = createCallbackFcn(app, @Button_11Pushed, true);
            app.Button_11.FontSize = 40;
            app.Button_11.Position = [314 187 73 68];
            app.Button_11.Text = '*';

            % Create Button_12
            app.Button_12 = uibutton(app.UIFigure, 'push');
            app.Button_12.ButtonPushedFcn = createCallbackFcn(app, @Button_12Pushed, true);
            app.Button_12.FontSize = 40;
            app.Button_12.Position = [224 187 73 68];
            app.Button_12.Text = '9';

            % Create Button_13
            app.Button_13 = uibutton(app.UIFigure, 'push');
            app.Button_13.ButtonPushedFcn = createCallbackFcn(app, @Button_13Pushed, true);
            app.Button_13.FontSize = 40;
            app.Button_13.Position = [38 97 73 68];
            app.Button_13.Text = '^';

            % Create Button_14
            app.Button_14 = uibutton(app.UIFigure, 'push');
            app.Button_14.ButtonPushedFcn = createCallbackFcn(app, @Button_14Pushed, true);
            app.Button_14.FontSize = 40;
            app.Button_14.Position = [130 97 73 68];
            app.Button_14.Text = '0';

            % Create Button_15
            app.Button_15 = uibutton(app.UIFigure, 'push');
            app.Button_15.ButtonPushedFcn = createCallbackFcn(app, @Button_15Pushed, true);
            app.Button_15.FontSize = 40;
            app.Button_15.Position = [314 97 73 68];
            app.Button_15.Text = '/';

            % Create Button_16
            app.Button_16 = uibutton(app.UIFigure, 'push');
            app.Button_16.ButtonPushedFcn = createCallbackFcn(app, @Button_16Pushed, true);
            app.Button_16.FontSize = 40;
            app.Button_16.Position = [224 97 73 68];
            app.Button_16.Text = '=';

            % Create cButton
            app.cButton = uibutton(app.UIFigure, 'push');
            app.cButton.ButtonPushedFcn = createCallbackFcn(app, @cButtonPushed, true);
            app.cButton.FontSize = 40;
            app.cButton.Position = [225 12 73 68];
            app.cButton.Text = 'c';

            % Create Button_17
            app.Button_17 = uibutton(app.UIFigure, 'push');
            app.Button_17.ButtonPushedFcn = createCallbackFcn(app, @Button_17Pushed, true);
            app.Button_17.FontSize = 40;
            app.Button_17.Position = [315 12 73 68];
            app.Button_17.Text = '<<';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = matlab_caculator_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end