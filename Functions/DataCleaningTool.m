classdef DataCleaningTool < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigureDataCleaningTool        matlab.ui.Figure
        TabGroup2                       matlab.ui.container.TabGroup
        SizeTab                         matlab.ui.container.Tab
        SortFeaturesButton_3            matlab.ui.control.Button
        FeaturesCountTab                matlab.ui.container.Tab
        DuplicateDataTab                matlab.ui.container.Tab
        DeletedDataTab                  matlab.ui.container.Tab
        UIAxes3_5                       matlab.ui.control.UIAxes
        TabGroup                        matlab.ui.container.TabGroup
        CurrentDataTab                  matlab.ui.container.Tab
        UIMainTable                     matlab.ui.control.Table
        EditField_7                     matlab.ui.control.EditField
        LastModifiedTime3EditField      matlab.ui.control.EditField
        LastModifiedTime4EditField      matlab.ui.control.EditField
        LastModifiedTime5EditField      matlab.ui.control.EditField
        LastModifiedTime6EditField      matlab.ui.control.EditField
        LastModifiedTime7EditField      matlab.ui.control.EditField
        LastModifiedTime1EditField      matlab.ui.control.EditField
        ActualNoOfColumnsEditField      matlab.ui.control.NumericEditField
        ListBox0                        matlab.ui.control.ListBox
        ListBox1                        matlab.ui.control.ListBox
        EditField0                      matlab.ui.control.NumericEditField
        LastModifiedTime0EditField      matlab.ui.control.EditField
        EditField2_5Label               matlab.ui.control.Label
        LastModifiedTime19EditField     matlab.ui.control.EditField
        LastModifiedTime20EditField     matlab.ui.control.EditField
        LastModifiedTime21EditField     matlab.ui.control.EditField
        LastModifiedTime22EditField     matlab.ui.control.EditField
        LastModifiedTime23EditField     matlab.ui.control.EditField
        LastModifiedTime24EditField     matlab.ui.control.EditField
        DataPropertiesTab               matlab.ui.container.Tab
        NumberOfRowsEditFieldLabel      matlab.ui.control.Label
        NumberOfRowsEditField           matlab.ui.control.NumericEditField
        NumberOfColumnsEditFieldLabel   matlab.ui.control.Label
        NumberOfColumnsEditField        matlab.ui.control.NumericEditField
        NumberOfNumericalFeaturesEditFieldLabel  matlab.ui.control.Label
        NumberOfNumericalFeaturesEditField  matlab.ui.control.NumericEditField
        NumberOfTextFeaturesEditFieldLabel  matlab.ui.control.Label
        NumberOfTextFeaturesEditField   matlab.ui.control.NumericEditField
        NumberofDuplicateRowsLabel      matlab.ui.control.Label
        NumberOfDuplicateRowsEditField  matlab.ui.control.NumericEditField
        NumberofDuplicateColumnsLabel   matlab.ui.control.Label
        NumberOfDuplicateColumnsEditField  matlab.ui.control.NumericEditField
        NumberOfDeletedRowsEditFieldLabel  matlab.ui.control.Label
        NumberOfDeletedRowsEditField    matlab.ui.control.NumericEditField
        NumberOfDeletedColumnsEditFieldLabel  matlab.ui.control.Label
        NumberOfDeletedColumnsEditField  matlab.ui.control.NumericEditField
        NumberOfDatetimeFeaturesEditFieldLabel  matlab.ui.control.Label
        NumberOfDateTimeFeaturesEditField  matlab.ui.control.NumericEditField
        FileSizeinMBEditFieldLabel      matlab.ui.control.Label
        FileSizeinMBEditField           matlab.ui.control.NumericEditField
        UIAxes6                         matlab.ui.control.UIAxes
        UIAxes7                         matlab.ui.control.UIAxes
        RemoveExtraSpaceButton          matlab.ui.control.Button
        TextListBox                     matlab.ui.control.ListBox
        NumericalListBox                matlab.ui.control.ListBox
        DatetimeListBox                 matlab.ui.control.ListBox
        TextArea_7                      matlab.ui.control.TextArea
        TextArea_8                      matlab.ui.control.TextArea
        TextArea_9                      matlab.ui.control.TextArea
        DropDown                        matlab.ui.control.DropDown
        DropDown_2                      matlab.ui.control.DropDown
        spaceEditField                  matlab.ui.control.EditField
        caseEditField                   matlab.ui.control.EditField
        EditField                       matlab.ui.control.EditField
        caseEditField_2                 matlab.ui.control.EditField
        spaceEditField_2                matlab.ui.control.EditField
        EditField_2                     matlab.ui.control.EditField
        UITableCase                     matlab.ui.control.Table
        UITableSpace                    matlab.ui.control.Table
        DeleteFeatureButton             matlab.ui.control.Button
        SortFeaturesButton              matlab.ui.control.Button
        UIMissingObservationsTable      matlab.ui.control.Table
        DeleteRowsButton                matlab.ui.control.Button
        DeleteRowsMinSlider             matlab.ui.control.Slider
        DeleteRowsMaxSlider             matlab.ui.control.Slider
        EditField_8                     matlab.ui.control.NumericEditField
        EditField_9                     matlab.ui.control.NumericEditField
        UIAxes5                         matlab.ui.control.UIAxes
        UITable2_13                     matlab.ui.control.Table
        EditFieldWhatsLeft1             matlab.ui.control.NumericEditField
        ChangeCaseButton                matlab.ui.control.Button
        EditField2_2                    matlab.ui.control.NumericEditField
        IdListBox                       matlab.ui.control.ListBox
        TextArea_13                     matlab.ui.control.TextArea
        IdButton                        matlab.ui.control.Button
        NumberOfNumericalFeaturesEditFieldLabel_2  matlab.ui.control.Label
        NumberOfIdFeaturesEditField     matlab.ui.control.NumericEditField
        ActualNoOfRowsEditField         matlab.ui.control.NumericEditField
        TextArea_14                     matlab.ui.control.TextArea
        TextArea_15                     matlab.ui.control.TextArea
        MissingDataPercentageEditFieldLabel  matlab.ui.control.Label
        MissingDataPercentageEditField  matlab.ui.control.NumericEditField
        TextArea_16                     matlab.ui.control.TextArea
        TextArea_17                     matlab.ui.control.TextArea
        TextArea_18                     matlab.ui.control.TextArea
        FeatureNamesButton              matlab.ui.control.Button
        DropDown_5                      matlab.ui.control.DropDown
        FeatureNamesEditField           matlab.ui.control.EditField
        EditField4                      matlab.ui.control.NumericEditField
        NumericalFeaturesTab            matlab.ui.container.Tab
        UIAxes                          matlab.ui.control.UIAxes
        MinEditSliderNumeric            matlab.ui.control.Slider
        MaxEditSliderNumeric            matlab.ui.control.Slider
        UINumericTable                  matlab.ui.control.Table
        RemoveObservationsNumericButton  matlab.ui.control.Button
        SelectedCellNumericEditField    matlab.ui.control.EditField
        DeleteRowsNumericButton         matlab.ui.control.Button
        NoOfRowsNumericEditField        matlab.ui.control.NumericEditField
        NoOfRowsNumericEditField_2      matlab.ui.control.NumericEditField
        NoOfRowsNumericEditField_3      matlab.ui.control.NumericEditField
        UITableNumericRowsDeleted       matlab.ui.control.Table
        UITable2_2                      matlab.ui.control.Table
        UITable2_6                      matlab.ui.control.Table
        UITable2_7                      matlab.ui.control.Table
        UITable2_8                      matlab.ui.control.Table
        NumberofBinsEditFieldLabel      matlab.ui.control.Label
        NumberofBinsEditField           matlab.ui.control.NumericEditField
        DatetimeFeaturesTab             matlab.ui.container.Tab
        UIAxes4_3                       matlab.ui.control.UIAxes
        MinEditSliderDatetime           matlab.ui.control.Slider
        MaxEditSliderDatetime           matlab.ui.control.Slider
        UIDatetimeTable                 matlab.ui.control.Table
        ChangeFormatButton              matlab.ui.control.Button
        RemoveObservationsDatetimeButton  matlab.ui.control.Button
        SelectedCellDatetimeEditField   matlab.ui.control.EditField
        DeleteRowsDatetimeButton        matlab.ui.control.Button
        SelectedDatetimeFormatEditField  matlab.ui.control.EditField
        NoOfRowsDatetimeEditField       matlab.ui.control.NumericEditField
        NoOfRowsDatetimeEditField_2     matlab.ui.control.NumericEditField
        NoOfRowsDatetimeEditField_3     matlab.ui.control.NumericEditField
        UITableDatetimeRowsDeleted      matlab.ui.control.Table
        UITable2                        matlab.ui.control.Table
        UITable2_9                      matlab.ui.control.Table
        UITable2_10                     matlab.ui.control.Table
        UITable2_11                     matlab.ui.control.Table
        UITable2_12                     matlab.ui.control.Table
        ConverttoExcelDATEVALUEButton   matlab.ui.control.Button
        TextFeaturesTab                 matlab.ui.container.Tab
        UIAxes3_3                       matlab.ui.control.UIAxes
        UIAxes3_4                       matlab.ui.control.UIAxes
        UITextTable                     matlab.ui.control.Table
        UITableTextCategory             matlab.ui.control.Table
        SelectSimilarCategoriesButton   matlab.ui.control.Button
        OneHotEncodingButton            matlab.ui.control.Button
        SelectedCellTextEditField       matlab.ui.control.EditField
        UICategoryTextTable             matlab.ui.control.Table
        UIBoxplotTextTable              matlab.ui.control.Table
        RemoveObservationsTextButton    matlab.ui.control.Button
        UpdateFeatureButtonDatetime_4   matlab.ui.control.Button
        SelectedCellTextEditField_2     matlab.ui.control.NumericEditField
        SelectedCellTextEditField_3     matlab.ui.control.NumericEditField
        UITableTextRowsDeleted          matlab.ui.control.Table
        UITableTextRowIndices           matlab.ui.control.Table
        UITableTextColumnIndices        matlab.ui.control.Table
        EditField_6                     matlab.ui.control.EditField
        UITableCategoryText_2           matlab.ui.control.Table
        DropDown_4                      matlab.ui.control.DropDown
        categoryEditField               matlab.ui.control.EditField
        EditField_10Label               matlab.ui.control.Label
        EditField_3                     matlab.ui.control.NumericEditField
        EditField2_3                    matlab.ui.control.NumericEditField
        EditField2_4                    matlab.ui.control.NumericEditField
        DeleteRowsTextButton            matlab.ui.control.Button
        LabelEncodingButton             matlab.ui.control.Button
        ImputationTab                   matlab.ui.container.Tab
        ImputeButton                    matlab.ui.control.Button
        ImputationErrorEditField        matlab.ui.control.EditField
        EditField2                      matlab.ui.control.NumericEditField
        UIAxes8                         matlab.ui.control.UIAxes
        UIAxes9                         matlab.ui.control.UIAxes
        PercentageofMissingDataEditFieldLabel  matlab.ui.control.Label
        PercentageofMissingDataEditField  matlab.ui.control.NumericEditField
        UIMissingObservationsTable_2    matlab.ui.control.Table
        DeleteFeatureButton_2           matlab.ui.control.Button
        UITable2_14                     matlab.ui.control.Table
        EditField3Label                 matlab.ui.control.Label
        EditFieldWhatsLeft2             matlab.ui.control.NumericEditField
        PercentageofMissingDataImputedEditFieldLabel  matlab.ui.control.Label
        PercentageofMissingDataImputedEditField  matlab.ui.control.NumericEditField
        NumberofTreesEditFieldLabel     matlab.ui.control.Label
        NumberofTreesEditField          matlab.ui.control.NumericEditField
        DataTransformationTab           matlab.ui.container.Tab
        TransformButton                 matlab.ui.control.Button
        SelectNumericalFeaturesListBox  matlab.ui.control.ListBox
        SelectedListBox                 matlab.ui.control.ListBox
        UIAxes_2                        matlab.ui.control.UIAxes
        DataTransformationDropDown      matlab.ui.control.DropDown
        TextArea_11                     matlab.ui.control.TextArea
        TextArea_12                     matlab.ui.control.TextArea
        transformationEditField         matlab.ui.control.EditField
        DataTransformationErrorEditField  matlab.ui.control.EditField
        NumberofBinsEditFieldLabel_2    matlab.ui.control.Label
        NumberofBinsEditField_2         matlab.ui.control.NumericEditField
        SaveDataTab                     matlab.ui.container.Tab
        SaveButton                      matlab.ui.control.Button
        ListBox                         matlab.ui.control.ListBox
        ResultsTab                      matlab.ui.container.Tab
        GenerateReportButton            matlab.ui.control.Button
        DataPropertiesCheckBox          matlab.ui.control.CheckBox
        NumericalFeaturesCheckBox       matlab.ui.control.CheckBox
        DatetimeFeaturesCheckBox        matlab.ui.control.CheckBox
        TextFeaturesCheckBox            matlab.ui.control.CheckBox
        DataTransformationCheckBox      matlab.ui.control.CheckBox
        SaveDataCheckBox                matlab.ui.control.CheckBox
        TextArea_10                     matlab.ui.control.TextArea
        ListBox_2                       matlab.ui.control.ListBox
        ImputationCheckBox              matlab.ui.control.CheckBox
        LastModifiedTime17EditField     matlab.ui.control.EditField
        LastModifiedTime18EditField     matlab.ui.control.EditField
        TextArea                        matlab.ui.control.TextArea
        LastModifiedTime2EditField      matlab.ui.control.EditField
        LastModifiedTime8EditField      matlab.ui.control.EditField
        LastModifiedTime9EditField      matlab.ui.control.EditField
        LastModifiedTime10EditField     matlab.ui.control.EditField
        LastModifiedTime11EditField     matlab.ui.control.EditField
        LastModifiedTime12EditField     matlab.ui.control.EditField
        LastModifiedTime13EditField     matlab.ui.control.EditField
        LastModifiedTime14EditField     matlab.ui.control.EditField
        LastModifiedTime15EditField     matlab.ui.control.EditField
        LastModifiedTime16EditField     matlab.ui.control.EditField
        UndoButton                      matlab.ui.control.Button
        ImportDatawithFeaturesinColumnsButton  matlab.ui.control.Button
        ImportDataEditField             matlab.ui.control.EditField
        HelpButton                      matlab.ui.control.Button
        ResizeButton                    matlab.ui.control.Button
    end



    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            screenSize = get(groot,'ScreenSize');
            screenWidth = screenSize(3);
            screenHeight = screenSize(4);
            left = screenWidth;
            bottom = screenHeight;
            width = screenWidth;
            height = screenHeight;
            
            drawnow;
            app.UIFigureDataCleaningTool.Position = [left bottom width height];
            % Get maximized screen at the start
            app.UIFigureDataCleaningTool.WindowState = 'maximized';
            
            app.UIFigureDataCleaningTool.Resize = 'on';
            app.UIFigureDataCleaningTool.AutoResizeChildren = 'on';
        end

        % Button pushed function: SelectSimilarCategoriesButton
        function SelectSimilarCategoriesButtonPushed(app, event)
            % Changes background color to grey
            app.SelectSimilarCategoriesButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Update similar categories
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            t4 = app.UICategoryTextTable.Data;
            app.UITableCategoryText_2.Data = app.UICategoryTextTable.Data;
            
            if length(find(string(t4{:,2})=='Select')) == length(t4{:,1})
                app.UITableCategoryText_2.Data = {};
            else
                app.UITableCategoryText_2.Data(find(string(t4{:,2})=='Select'),:) = [];
            end
            
            newStr = Tbl_text.(string(app.SelectedCellTextEditField.Value));
            for i = 1:size(t4,1)
                if strcmp(string(t4{i,2}),'Select') == 0
                    x = cellstr(t4{i,1});
                    y = cellstr(t4{i,2});
                    newStr = GetSimilarityCheck(app, newStr, x, y);
                end
            end
            Tbl_text.(string(app.SelectedCellTextEditField.Value)) = newStr;
            Tbl.(string(app.SelectedCellTextEditField.Value)) = newStr;
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Current data tab
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Plot histogram
            Tbl = app.UIMainTable.Data;
            T = string(app.SelectedCellTextEditField.Value);
            histogram(app.UIAxes3_3,categorical(Tbl.(T)))
            app.UIAxes3_3.XLabel.Interpreter = 'latex';
            app.UIAxes3_3.XLabel.String = T;
            
            % Last modified time
            app.LastModifiedTime16EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.SelectSimilarCategoriesButton.BackgroundColor = [0,0,0];
        end

        % Cell selection callback: UINumericTable
        function UINumericTableCellSelection(app, event)
            indices = event.Indices;
            
            % Numerical Features
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.SelectedCellNumericEditField.Value = string(varNames_numeric(indices(1)));
            
            
            % Plot histogram and boxplot for the selected feature
            if indices(2) == 1
                T1 = app.UINumericTable.Data;
                T = string(T1{indices(1),1});
                
                nbins = app.NumberofBinsEditField.Value;
                if nbins == 0
                    histogram(app.UIAxes,Tbl_numeric.(T))
                else
                    histogram(app.UIAxes,Tbl_numeric.(T),nbins)
                end
                app.UIAxes.XLabel.Interpreter = 'latex';
                app.UIAxes.XLabel.String = T;
                
                app.MinEditSliderNumeric.Limits = [min(Tbl_numeric.(T)) max(Tbl_numeric.(T))];
                app.MaxEditSliderNumeric.Limits = [min(Tbl_numeric.(T)) max(Tbl_numeric.(T))];
                app.MinEditSliderNumeric.Value = min(Tbl_numeric.(T));
                app.MaxEditSliderNumeric.Value = max(Tbl_numeric.(T));
            end
        end

        % Cell selection callback: UITextTable
        function UITextTableCellSelection(app, event)
            indices = event.Indices;
            
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            
            
            if (indices(2) == 1)
                app.UIAxes3_3.cla;
                app.UIAxes3_3.XLabel.String = '';
                app.UIAxes3_4.cla;
                app.UIAxes3_4.XTick = {};
                app.UIAxes3_4.XLabel.String = '';
                app.UIAxes3_4.YLabel.String = '';
                
                T3 = app.UITextTable.Data;
                
                T = string(T3{indices(1),1});
                
                histogram(app.UIAxes3_3,categorical(Tbl_text.(T)))
                app.UIAxes3_3.XLabel.Interpreter = 'latex';
                app.UIAxes3_3.XLabel.String = T;
                
                app.SelectedCellTextEditField.Value = string(app.UITextTable.Data{indices(1),1});
                
                cat = categories(categorical(Tbl.(T)));
                b = repmat({'Select'},size(cat,1),1);
                a = categories(categorical(Tbl.(T)));
                t = table(a,b);
                t.b = categorical(t.b,[{'Select'},cat'],'Ordinal',true);
                app.UICategoryTextTable.Data = t;
                
                hb = {};
                hOutliers = {};
                yy = {};
                app.UIBoxplotTextTable.Data = {};
                for j = 1:app.NumberOfNumericalFeaturesEditField.Value
                    hb{j} = boxplot(app.UIAxes3_5,Tbl_numeric.(string(app.UINumericTable.Data{j,1})),categorical(Tbl_text.(string(varNames_text(indices(1))))),1,'o');
                    hOutliers{j} = findobj(hb{j},'Tag','Outliers');
                    yy{j} = get(hOutliers{j},'YData');
                    y = yy{j};
                    for i = 1:size(y,1)
                        app.UIBoxplotTextTable.ColumnName = [{'Outliers'} categories(categorical(Tbl_text.(string(varNames_text(indices(1))))))'];
                        app.UIBoxplotTextTable.Data{j,1} = char(string(app.UINumericTable.Data{j,1}));
                        app.UIBoxplotTextTable.Data{j,i+1} = strjoin(cellstr(num2str(y{i})),',');
                    end
                end
            end
        end

        % Button pushed function: ChangeFormatButton
        function ChangeFormatButtonPushed(app, event)
            % Changes background color to grey
            app.ChangeFormatButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Change datetime format
            Tbl = app.UIMainTable.Data;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            Tbl_datetimenew = app.UIDatetimeTable.Data;
            app.UITable2.Data = Tbl_datetimenew(:,[1 5]);
            
            if length(find(string(Tbl_datetimenew{:,5})=='Select')) == length(varNames_datetime)
                app.UITable2.Data = {};
            else
                app.UITable2.Data(find(string(Tbl_datetimenew{:,5})=='Select'),:) = [];
            end
            
            for i = 1:length(varNames_datetime)
                if strcmp(string(Tbl_datetimenew{i,5}),'Select') == 1
                    Tbl.(string(varNames_datetime(i))).Format = 'default';
                else
                    Tbl.(string(varNames_datetime(i))).Format = string(Tbl_datetimenew{i,5});
                end
            end
            app.UIMainTable.Data = Tbl;
            
            % Current data widget
            % Displays the original table with column names
            app.UIMainTable.Data = Tbl;
            app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
            
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv','Delimiter',',')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Imputation widget
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            
            % Last modified time
            app.LastModifiedTime11EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.ChangeFormatButton.BackgroundColor = [0,0,0];
        end

        % Callback function
        function UpdateRangeButtonDatetimePushed(app, event)
            % Changes background color to grey
            app.UpdateRangeButtonDatetime.BackgroundColor = [0.65,0.65,0.65];
            
            % 1 Update range %
            Tbl = app.UIMainTable.Data;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_datetime = find(array_datetime==1);
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            
            x = {};
            lowerLimit = {};
            upperLimit = {};
            y = {};
            indices_0 = {};
            indices0 = {};
            for i = 1:length(varNames_datetime)
                x{i} = Tbl.(string(varNames_datetime{i}));
                lowerLimit{i} = string(app.UIDatetimeTable.Data{i,8});
                upperLimit{i} = string(app.UIDatetimeTable.Data{i,9});
                y{i} = x{i}((x{i} >= lowerLimit{i}) & (x{i} <= upperLimit{i}));
                indices_0{i} = find((x{i} < lowerLimit{i}) | (x{i} > upperLimit{i}));
                indices0{i} = indices_0{i}';
                Tbl{indices0{i},index_datetime(i)} = NaT(length(indices0{i}),1);
            end
            
            % 2 Present table %
            % Displays the original table with column names
            app.UIMainTable.Data = Tbl;
            app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
            
            Tbl = app.UIMainTable.Data;
            varNames = Tbl.Properties.VariableNames;
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            
            % 3 Data properties %
            fullname = app.ImportDataEditField.Value;
            props = dir(fullname);
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Missingness plot
            A = flip(ismissing(Tbl));
            imagesc(app.UIAxes6,A);
            cmap = parula(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames);
            app.UIAxes6.XTickLabel = varNames;
            app.UIAxes6.YTick = [1 size(Tbl,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                % Numerical features tab
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            end
            
            % Datetime features widget
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                % Date/time features tab
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:SS','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            end
            
            % Text features widget
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                % Text features tab
                % Displays the numerical feature in List Box
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            end
            
            % What's left widget
            % Table 1
            Tbl = app.UIMainTable.Data;
            varNames = Tbl.Properties.VariableNames;
            m =  GetMissingData(app, Tbl);
            t = table(varNames',m');
            app.UIMissingObservationsTable.Data = t;
            
            plot(app.UIAxes5,0:length(varNames)-1,m);
            app.UIAxes5.XTick = 0:length(varNames)-1;
            app.UIAxes5.XTickLabel = varNames;
            app.UIAxes5.YTick = 0:5:100;
            app.UIAxes5.YTickLabel = 0:5:100;
            
            % Plots updated histogram of the selected cell
            T = app.SelectedCellDatetimeEditField.Value;
            histogram(app.UIAxes4_3,Tbl_datetime.(T))
            app.UIAxes4_3.XLabel.Interpreter = 'latex';
            app.UIAxes4_3.XLabel.String = T;
            
            app.MinEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
            app.MaxEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
            app.MinEditSliderDatetime.Value = app.MinEditSliderDatetime.Limits(1);
            app.MaxEditSliderDatetime.Value = app.MaxEditSliderDatetime.Limits(2);
        end

        % Cell selection callback: UIDatetimeTable
        function UIDatetimeTableCellSelection(app, event)
            indices = event.Indices;
            
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            
            app.SelectedCellDatetimeEditField.Value = string(varNames_datetime(indices(1)));
            
            if (indices(2) == 1)
                T2 = app.UIDatetimeTable.Data;
                
                T = string(T2{indices(1),1});
                
                histogram(app.UIAxes4_3,Tbl_datetime.(T))
                app.UIAxes4_3.XLabel.Interpreter = 'latex';
                app.UIAxes4_3.XLabel.String = T;
                
                app.MinEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
                app.MaxEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
                app.MinEditSliderDatetime.Value = app.MinEditSliderDatetime.Limits(1);
                app.MaxEditSliderDatetime.Value = app.MaxEditSliderDatetime.Limits(2);
            end
        end

        % Value changed function: MinEditSliderDatetime
        function MinEditSliderDatetimeValueChanged(app, event)
            value = app.MinEditSliderDatetime.Value;
            
            % Datetime features
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            
            Tbl_datetimenew = app.UIDatetimeTable.Data;
            displayFormat = string(Tbl_datetimenew{find(varNames_datetime==string(app.SelectedCellDatetimeEditField.Value)),5});
            if strcmp(displayFormat,'Select') == 1
                app.UIDatetimeTable.Data{find(varNames_datetime==string(app.SelectedCellDatetimeEditField.Value)),8} = cellstr(datetime(value,'Format','default','ConvertFrom','datenum'));
            else
                app.UIDatetimeTable.Data{find(varNames_datetime==string(app.SelectedCellDatetimeEditField.Value)),8} = cellstr(datetime(value,'Format',displayFormat,'ConvertFrom','datenum'));
            end
        end

        % Value changed function: MaxEditSliderDatetime
        function MaxEditSliderDatetimeValueChanged(app, event)
            value = app.MaxEditSliderDatetime.Value;
            
            % Datetime features
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            
            Tbl_datetimenew = app.UIDatetimeTable.Data;
            displayFormat = string(Tbl_datetimenew{find(varNames_datetime==string(app.SelectedCellDatetimeEditField.Value)),5});
            if strcmp(displayFormat,'Select') == 1
                app.UIDatetimeTable.Data{find(varNames_datetime==string(app.SelectedCellDatetimeEditField.Value)),9} = cellstr(datetime(value,'Format','default','ConvertFrom','datenum'));
            else
                app.UIDatetimeTable.Data{find(varNames_datetime==string(app.SelectedCellDatetimeEditField.Value)),9} = cellstr(datetime(value,'Format',displayFormat,'ConvertFrom','datenum'));
            end
        end

        % Value changed function: MinEditSliderNumeric
        function MinEditSliderNumericValueChanged(app, event)
            value = app.MinEditSliderNumeric.Value;
            
            % Numerical features
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            
            app.UINumericTable.Data{find(varNames_numeric==string(app.SelectedCellNumericEditField.Value)),8} = value;
        end

        % Value changed function: MaxEditSliderNumeric
        function MaxEditSliderNumericValueChanged(app, event)
            value = app.MaxEditSliderNumeric.Value;
            
            % Numerical features
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            
            app.UINumericTable.Data{find(varNames_numeric==string(app.SelectedCellNumericEditField.Value)),9} = value;
        end

        % Button pushed function: SaveButton
        function SaveButtonPushed(app, event)
            % Changes background color to grey
            app.SaveButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            Tbl = app.UIMainTable.Data;
            
            filter = {'*.csv';'*.xlsx'};
            l = numel(app.ListBox.Items);
            
            if l==0
                fname = sprintf('%s_clean.csv', app.EditField_7.Value);
            else
                fname = sprintf('%s_clean(%d).csv', app.EditField_7.Value, l);
            end
            
            [filename,filepath,~]=uiputfile(filter,'Save as',fname);
            fullname = [filepath filename];
            if isequal(filepath,0) && isequal(filename,0)
                app.SaveButton.BackgroundColor = [0,0,0];
            else
                writetable(Tbl,fullname)
                
                app.ListBox.Items(l+1) = cellstr(fullname);
                
                % Last modified time
                app.LastModifiedTime22EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
                % Changes background color to black
                app.SaveButton.BackgroundColor = [0,0,0];
            end
        end

        % Button pushed function: RemoveObservationsNumericButton
        function RemoveObservationsNumericButtonPushed(app, event)
            % Changes background color to grey
            app.RemoveObservationsNumericButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Update less than features
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            Tbl_numericnew = app.UINumericTable.Data;
            app.UITable2_2.Data = Tbl_numericnew(:,[1 6]);
            if length(find(string(Tbl_numericnew{:,6})=='Select')) == length(varNames_numeric)
                app.UITable2_2.Data = {};
            else
                app.UITable2_2.Data(find(string(Tbl_numericnew{:,6})=='Select'),:) = [];
            end
            x = {};
            featureLess = {};
            y0 = {};
            indices0 = {};
            for i = 1:length(varNames_numeric)
                x{i} = Tbl.(string(varNames_numeric{i}));
                if strcmp(string(Tbl_numericnew{i,6}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                else
                    featureLess{i} = Tbl.(string(Tbl_numericnew{i,6}));
                    y0{i} = x{i}(x{i}<featureLess{i});
                    indices0{i} = find(x{i}>=featureLess{i});
                end
                Tbl{indices0{i}, index_numeric(i)} = NaN;
            end
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Update greater than features
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            Tbl_numericnew = app.UINumericTable.Data;
            app.UITable2_6.Data = Tbl_numericnew(:,[1 7]);
            if length(find(string(Tbl_numericnew{:,7})=='Select')) == length(varNames_numeric)
                app.UITable2_6.Data = {};
            else
                app.UITable2_6.Data(find(string(Tbl_numericnew{:,7})=='Select'),:) = [];
            end
            x = {};
            featureGreater = {};
            y0 = {};
            indices0 = {};
            for i = 1:length(varNames_numeric)
                x{i} = Tbl.(string(varNames_numeric{i}));
                if strcmp(string(Tbl_numericnew{i,7}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                else
                    featureGreater{i} = Tbl_numeric.(string(Tbl_numericnew{i,7}));
                    y0{i} = x{i}(x{i}>featureGreater{i});
                    indices0{i} = find(x{i}<=featureGreater{i});
                end
                Tbl{indices0{i}, index_numeric(i)} = NaN;
            end
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Update range
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            x = {};
            lowerLimit = {};
            upperLimit = {};
            y = {};
            indices_0 = {};
            indices0 = {};
            for i = 1:length(varNames_numeric)
                x{i} = Tbl.(string(varNames_numeric{i}));
                lowerLimit{i} = app.UINumericTable.Data{i,8};
                upperLimit{i} = app.UINumericTable.Data{i,9};
                y{i} = x{i}((x{i} >= lowerLimit{i}) & (x{i} <= upperLimit{i}));
                indices_0{i} = find((x{i} < lowerLimit{i}) | (x{i} > upperLimit{i}));
                indices0{i} = indices_0{i}';
                Tbl{indices0{i}, index_numeric(i)} = NaN;
            end
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties tab
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features tab
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Plots updated histogram of the selected cell
            if isempty(app.SelectedCellNumericEditField.Value) == false
                T = app.SelectedCellNumericEditField.Value;
                nbins = app.NumberofBinsEditField.Value;
                if nbins == 0
                    histogram(app.UIAxes,Tbl_numeric.(T))
                else
                    histogram(app.UIAxes,Tbl_numeric.(T),nbins)
                end
                app.UIAxes.XLabel.Interpreter = 'latex';
                app.UIAxes.XLabel.String = T;
                
                app.MinEditSliderNumeric.Limits = [min(Tbl_numeric.(T)) max(Tbl_numeric.(T))];
                app.MaxEditSliderNumeric.Limits = [min(Tbl_numeric.(T)) max(Tbl_numeric.(T))];
                app.MinEditSliderNumeric.Value = app.MinEditSliderNumeric.Limits(1);
                app.MaxEditSliderNumeric.Value = app.MaxEditSliderNumeric.Limits(2);
            end
            
            % Last modified time
            app.LastModifiedTime8EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.RemoveObservationsNumericButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: RemoveObservationsDatetimeButton
        function RemoveObservationsDatetimeButtonPushed(app, event)
            % Changes background color to grey
            app.RemoveObservationsDatetimeButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Update less than features
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_datetime = find(array_datetime==1);
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            Tbl_datetimenew = app.UIDatetimeTable.Data;
            app.UITable2_9.Data = Tbl_datetimenew(:,[1 6]);
            if length(find(string(Tbl_datetimenew{:,6})=='Select')) == length(varNames_datetime)
                app.UITable2_9.Data = {};
            else
                app.UITable2_9.Data(find(string(Tbl_datetimenew{:,6})=='Select'),:) = [];
            end
            x = {};
            featureLess = {};
            y0 = {};
            indices0 = {};
            for i = 1:length(varNames_datetime)
                x{i} = Tbl.(string(varNames_datetime{i}));
                if strcmp(string(Tbl_datetimenew{i,6}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                else
                    featureLess{i} = Tbl_datetime.(string(Tbl_datetimenew{i,6}));
                    y0{i} = x{i}(x{i}<featureLess{i});
                    indices0{i} = find(x{i}>=featureLess{i});
                end
                Tbl{indices0{i}, index_datetime(i)} = NaT(length(indices0{i}),1);
            end
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Update greater than features
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_datetime = find(array_datetime==1);
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            Tbl_datetimenew = app.UIDatetimeTable.Data;
            app.UITable2_11.Data = Tbl_datetimenew(:,[1 7]);
            if length(find(string(Tbl_datetimenew{:,7})=='Select')) == length(varNames_datetime)
                app.UITable2_11.Data = {};
            else
                app.UITable2_11.Data(find(string(Tbl_datetimenew{:,7})=='Select'),:) = [];
            end
            x = {};
            featureGreater = {};
            y0 = {};
            indices0 = {};
            for i = 1:length(varNames_datetime)
                x{i} = Tbl.(string(varNames_datetime{i}));
                if strcmp(string(Tbl_datetimenew{i,7}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                else
                    featureGreater{i} = Tbl_datetime.(string(Tbl_datetimenew{i,7}));
                    y0{i} = x{i}(x{i}>featureGreater{i});
                    indices0{i} = find(x{i}<=featureGreater{i});
                end
                Tbl{indices0{i}, index_datetime(i)} = NaT(length(indices0{i}),1);
            end
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Update range
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_datetime = find(array_datetime==1);
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            x = {};
            lowerLimit = {};
            upperLimit = {};
            y = {};
            indices_0 = {};
            indices0 = {};
            for i = 1:length(varNames_datetime)
                x{i} = Tbl.(string(varNames_datetime{i}));
                lowerLimit{i} = string(app.UIDatetimeTable.Data{i,8});
                upperLimit{i} = string(app.UIDatetimeTable.Data{i,9});
                y{i} = x{i}((x{i} >= lowerLimit{i}) & (x{i} <= upperLimit{i}));
                indices_0{i} = find((x{i} < lowerLimit{i}) | (x{i} > upperLimit{i}));
                indices0{i} = indices_0{i}';
                Tbl{indices0{i},index_datetime(i)} = NaT(length(indices0{i}),1);
            end
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation tab
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Plots updated histogram of the selected cell
            T = app.SelectedCellDatetimeEditField.Value;
            histogram(app.UIAxes4_3,Tbl_datetime.(T))
            app.UIAxes4_3.XLabel.Interpreter = 'latex';
            app.UIAxes4_3.XLabel.String = T;
            
            app.MinEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
            app.MaxEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
            app.MinEditSliderDatetime.Value = app.MinEditSliderDatetime.Limits(1);
            app.MaxEditSliderDatetime.Value = app.MaxEditSliderDatetime.Limits(2);
            
            % Last modified time
            app.LastModifiedTime12EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.RemoveObservationsDatetimeButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: DeleteRowsNumericButton
        function DeleteRowsNumericButtonPushed(app, event)
            % Changes background color to grey
            app.DeleteRowsNumericButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Update less than features
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            Tbl_numericnew = app.UINumericTable.Data;
            app.UITable2_7.Data = Tbl_numericnew(:,[1 6]);
            if length(find(string(Tbl_numericnew{:,6})=='Select')) == length(varNames_numeric)
                app.UITable2_7.Data = {};
            else
                app.UITable2_7.Data(find(string(Tbl_numericnew{:,6})=='Select'),:) = [];
            end
            x = {};
            featureLess = {};
            y0 = {};
            indices0 = {};
            length1 = {};
            for i = 1:length(app.NumericalListBox.Items)
                x{i} = Tbl.(string(varNames_numeric{i}));
                if strcmp(string(Tbl_numericnew{i,6}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                    length1{i} = 0;
                else
                    featureLess{i} = Tbl.(string(Tbl_numericnew{i,6}));
                    y0{i} = x{i}(x{i}<featureLess{i});
                    indices0{i} = find(x{i}>=featureLess{i});
                    length1{i} = length(indices0{i});
                end
                app.UITableNumericRowsDeleted.Data{i,1} = length1{i};
            end
            indices = unique(cell2mat(indices0'));
            app.NoOfRowsNumericEditField.Value = length(indices);
            Tbl(indices, :) = [];
            Tbl_true(indices, :) = [];
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Update greater than features
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            Tbl_numericnew = app.UINumericTable.Data;
            app.UITable2_8.Data = Tbl_numericnew(:,[1 7]);
            if length(find(string(Tbl_numericnew{:,7})=='Select')) == length(varNames_numeric)
                app.UITable2_8.Data = {};
            else
                app.UITable2_8.Data(find(string(Tbl_numericnew{:,7})=='Select'),:) = [];
            end
            x = {};
            featureGreater = {};
            y0 = {};
            indices0 = {};
            length2 = {};
            for i = 1:length(app.NumericalListBox.Items)
                x{i} = Tbl.(string(varNames_numeric{i}));
                if strcmp(string(Tbl_numericnew{i,7}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                    length2{i} = 0;
                else
                    featureGreater{i} = Tbl_numeric.(string(Tbl_numericnew{i,7}));
                    y0{i} = x{i}(x{i}>featureGreater{i});
                    indices0{i} = find(x{i}<=featureGreater{i});
                    length2{i} = length(indices0{i});
                end
                app.UITableNumericRowsDeleted.Data{i,2} = length2{i};
            end
            indices = unique(cell2mat(indices0'));
            app.NoOfRowsNumericEditField_2.Value = length(indices);
            Tbl(indices, :) = [];
            Tbl_true(indices, :) = [];
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Update range
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            x = {};
            lowerLimit = {};
            upperLimit = {};
            y0 = {};
            indices_0 = {};
            indices0 = {};
            length3 = {};
            for i = 1:length(app.NumericalListBox.Items)
                x{i} = Tbl.(string(varNames_numeric{i}));
                lowerLimit{i} = app.UINumericTable.Data{i,8};
                upperLimit{i} = app.UINumericTable.Data{i,9};
                y0{i} = x{i}((x{i} >= lowerLimit{i}) & (x{i} <= upperLimit{i}));
                indices_0{i} = find((x{i} < lowerLimit{i}) | (x{i} > upperLimit{i}));
                indices0{i} = indices_0{i}';
                length3{i} = length(indices0{i});
                app.UITableNumericRowsDeleted.Data{i,3} = length3{i};
            end
            indices = unique(cell2mat(indices0));
            Tbl(indices, :) = [];
            Tbl_true(indices, :) = [];
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            %
            d = zeros(1,length(varNames));
            for i = 1:length(varNames_numeric)
                if isempty(app.UITableNumericRowsDeleted.Data{i,3}) == false
                    if isempty(app.UITableNumericRowsDeleted.Data{i,1}) == false
                        d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,1} + app.UITableNumericRowsDeleted.Data{i,2} + app.UITableNumericRowsDeleted.Data{i,3};
                    else
                        d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,3};
                    end
                else
                    d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,1} + app.UITableNumericRowsDeleted.Data{i,2};
                end
            end
            for i = 1:length(varNames_datetime)
                d(find(varNames == string(varNames_datetime{i}))) = 0;
            end
            % Displays the number of deleted rows
            app.NumberOfDeletedRowsEditField.Value = app.ActualNoOfRowsEditField.Value - size(Tbl_true,1);
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Plots updated histogram of the selected cell
            if isempty(app.SelectedCellNumericEditField.Value) == false
                T = app.SelectedCellNumericEditField.Value;
                nbins = app.NumberofBinsEditField.Value;
                if nbins == 0
                    histogram(app.UIAxes,Tbl_numeric.(T))
                else
                    histogram(app.UIAxes,Tbl_numeric.(T),nbins)
                end
                app.UIAxes.XLabel.Interpreter = 'latex';
                app.UIAxes.XLabel.String = T;
                
                app.MinEditSliderNumeric.Limits = [min(Tbl_numeric.(T)) max(Tbl_numeric.(T))];
                app.MaxEditSliderNumeric.Limits = [min(Tbl_numeric.(T)) max(Tbl_numeric.(T))];
                app.MinEditSliderNumeric.Value = app.MinEditSliderNumeric.Limits(1);
                app.MaxEditSliderNumeric.Value = app.MaxEditSliderNumeric.Limits(2);
            end
            
            % Last modified time
            app.LastModifiedTime9EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.DeleteRowsNumericButton.BackgroundColor = [0,0,0];
        end

        % Cell edit callback: UITableNumericRowsDeleted
        function UITableNumericRowsDeletedCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
        end

        % Cell edit callback: UITableDatetimeRowsDeleted
        function UITableDatetimeRowsDeletedCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            % Date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            newData{:,1} = varNames_datetime;
            newData{:,5} = newData{:,2}+newData{:,3}+newData{:,4};
        end

        % Cell selection callback: UIBoxplotTextTable
        function UIBoxplotTextTableCellSelection(app, event)
            indices = event.Indices;
            
            Tbl_true = app.UIMainTable.Data;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            if indices(2) ~= 1
                app.UITableTextRowIndices.Data{indices(1),indices(2)-1} = indices(1);
                app.UITableTextColumnIndices.Data{indices(1),indices(2)-1} = indices(2);
                
                rowIndex = indices(1);
                colIndex = indices(2);
                if (isempty(app.UITableTextRowIndices.Data{indices(1),indices(2)-1}) == false) && (isempty(app.UITableTextColumnIndices.Data{indices(1),indices(2)-1}) == false)
                    indices0 = {};
                    observations = str2num(string(app.UIBoxplotTextTable.Data{rowIndex,colIndex}));
                    for i = 1:length(observations)
                        A = find(Tbl.(string(varNames_numeric(rowIndex))) == observations(i));
                        B = find(Tbl.(string(app.SelectedCellTextEditField.Value)) == string(app.UIBoxplotTextTable.ColumnName{colIndex}));
                        indices0{i} = intersect(A,B);
                    end
                    indices = unique(cell2mat(indices0'));
                    app.UITableTextRowsDeleted.Data{rowIndex,colIndex-1} = length(indices);
                end
            else
                boxplot(app.UIAxes3_4,Tbl_numeric.(string(app.UINumericTable.Data{indices(1),1})),categorical(Tbl_text.(string(app.SelectedCellTextEditField.Value))),1,'*');
                app.UIAxes3_4.XLabel.Interpreter = 'latex';
                app.UIAxes3_4.XLabel.String = app.SelectedCellTextEditField.Value;
                app.UIAxes3_4.YLabel.Interpreter = 'latex';
                app.UIAxes3_4.YLabel.String = string(app.UINumericTable.Data{indices(1),1});
            end
        end

        % Button pushed function: RemoveObservationsTextButton
        function RemoveObservationsTextButtonPushed(app, event)
            % Changes background color to grey
            app.RemoveObservationsTextButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            app.EditField2_3.Value = 1;
            for r = 1:size(app.UITableTextRowIndices.Data,1)
                for c = 1:size(app.UITableTextColumnIndices.Data,2)
                    Tbl_true = app.UIMainTable.Data;
                    varNames_true = Tbl_true.Properties.VariableNames;
                    Tbl = removevars(Tbl_true,app.IdListBox.Items);
                    varNames = Tbl.Properties.VariableNames;
                    array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                    index_notnumeric = find(array_numeric==0);
                    Tbl_numeric = removevars(Tbl,index_notnumeric);
                    varNames_numeric = Tbl_numeric.Properties.VariableNames;
                    rowIndex = app.UITableTextRowIndices.Data{r,c};
                    colIndex = app.UITableTextColumnIndices.Data{r,c};
                    if (isempty(rowIndex) == false) && (isempty(colIndex) == false)
                        indices0 = {};
                        observations = str2double(string(app.UIBoxplotTextTable.Data{rowIndex,colIndex}));
                        for i = 1:length(observations)
                            A = find(Tbl.(string(varNames_numeric(rowIndex))) == observations(i));
                            B = find(Tbl.(string(app.SelectedCellTextEditField.Value)) == string(app.UIBoxplotTextTable.ColumnName{colIndex}));
                            indices0{i} = intersect(A,B);
                        end
                        indices = unique(cell2mat(indices0));
                        Tbl{indices,find(varNames == string(varNames_numeric{rowIndex}))} = NaN;
                        for i = 1:size(Tbl,2)
                            Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
                        end
                        app.UIMainTable.Data = Tbl_true;
                        app.UIMainTable.ColumnName = Tbl_true.Properties.VariableNames;
                        app.UIBoxplotTextTable.Data{rowIndex,colIndex} = [];
                    end
                end
            end
            app.UITableTextRowIndices.Data = {};
            app.UITableTextColumnIndices.Data = {};
            % Current data widget
            % Displays the original table with column names
            
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % 2 Data properties %
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features tab
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features tab
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text = GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime17EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.RemoveObservationsTextButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: TransformButton
        function TransformButtonPushed(app, event)
            % Changes background color to grey
            app.TransformButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Data transformation
            app.UIAxes_2.cla;
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            if isempty(app.transformationEditField.Value) == false
                app.SelectedListBox.Value = {};
                varNames = Tbl.Properties.VariableNames;
                index = zeros(length(app.SelectedListBox.Items),1);
                for i = 1:length(app.SelectedListBox.Items)
                    index(i) = find(varNames == string(app.SelectedListBox.Items{i}));
                end
                index_final = unique(index);
                Tbl_selected = Tbl(:, index_final);
                X = table2array(Tbl_selected);
                indices_nonnan = find(isnan(X)==0);
                Y = X;
                % Data standardization
                if app.transformationEditField.Value == "mean 0 and standard deviation 1"
                    % Number of observations
                    N=size(X(indices_nonnan),1);
                    % Output array of normalised values
                    % Subtract mean of each column of data
                    Y(indices_nonnan)=X(indices_nonnan)-repmat(mean(X(indices_nonnan)),N,1);
                    % Normalize each observation by the standard deviation of each column of data
                    Y(indices_nonnan)=Y(indices_nonnan)./repmat(std(X(indices_nonnan),0,1),N,1);
                    lengthofmissing = 0;
                end
                % Data normalization
                if app.transformationEditField.Value == "between 0 and 1"
                    Y(indices_nonnan) = (X(indices_nonnan) - min(X(indices_nonnan))) / ( max(X(indices_nonnan)) - min(X(indices_nonnan)) );
                    Y(Y(indices_nonnan)==Inf) = NaN;
                    lengthofmissing = length(find(Y(indices_nonnan)==Inf));
                end
                % Natural Logarithmic transformation
                if app.transformationEditField.Value == "ln"
                    Y(indices_nonnan) = log(X(indices_nonnan));
                    Y(union(find(X(indices_nonnan)==0), find(X(indices_nonnan)<0))) = NaN;
                    lengthofmissing = length(union(find(X(indices_nonnan)==0), find(X(indices_nonnan)<0)));
                end
                % Logarithm base 10 transformation
                if app.transformationEditField.Value == "log10"
                    Y(indices_nonnan) = log10(X(indices_nonnan));
                    Y(union(find(X(indices_nonnan)==0), find(X(indices_nonnan)<0))) = NaN;
                    lengthofmissing = length(union(find(X(indices_nonnan)==0), find(X(indices_nonnan)<0)));
                end
                % Logarithm base 2 transformation
                if app.transformationEditField.Value == "log2"
                    Y(indices_nonnan) = log2(X(indices_nonnan));
                    Y(union(find(X(indices_nonnan)==0), find(X(indices_nonnan)<0))) = NaN;
                    lengthofmissing = length(union(find(X(indices_nonnan)==0), find(X(indices_nonnan)<0)));
                end
                % Exponential transformation
                if app.transformationEditField.Value == "exp"
                    Y(indices_nonnan) = exp(X(indices_nonnan));
                    Y(Y(indices_nonnan)==Inf) = NaN;
                    lengthofmissing = length(find(Y(indices_nonnan)==Inf));
                end
                % Square root transformation
                if app.transformationEditField.Value == "sqrt"
                    Y(indices_nonnan) = X(indices_nonnan).^(1/2);
                    Y(X(indices_nonnan)<0) = NaN;
                    lengthofmissing = length(find(X(indices_nonnan)<0));
                end
                % Inverse transformation
                if app.transformationEditField.Value == "reciprocal"
                    Y(indices_nonnan) = X(indices_nonnan).^(-1);
                    Y(X(indices_nonnan)==0) = NaN;
                    lengthofmissing = length(find(X(indices_nonnan)==0));
                end
            end
            Tbl_updated = array2table(Y);
            % Displays the original table with column names
            for i = 1:size(Tbl_updated,2)
                Tbl(:,index_final(i)) = Tbl_updated(:,i);
            end
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            percentage = (lengthofmissing/numel(Tbl_true))*100;
            app.DataTransformationErrorEditField.Visible = 'on';
            app.DataTransformationErrorEditField.Value = sprintf('Message. %0.2f%% increase in missing data due to data transformation.', percentage);
            app.DataTransformationDropDown.Value = 'Select';
            
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = jet(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime21EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.TransformButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: GenerateReportButton
        function GenerateReportButtonPushed(app, event)
            % Changes background color to grey
            app.GenerateReportButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Report %
            makeDOMCompilable();
            import mlreportgen.dom.*
            import mlreportgen.report.*
            filter = {'*pdf'};
            l = numel(app.ListBox_2.Items);
            if l==0
                fname = sprintf('%s_clean_finalreport.pdf', app.EditField_7.Value);
            else
                fname = sprintf('%s_clean_finalreport(%d).pdf', app.EditField_7.Value, l);
            end
            [filename,filepath,~]=uiputfile(filter,'Save as',fname);
            fullname = [filepath filename];
            if isequal(filepath,0) && isequal(filename,0)
                % Changes background color to black
                app.GenerateReportButton.BackgroundColor = [0,0,0];
            else
                d = Report(fullname);
                d.Locale = 'en';
                app.ListBox_2.Items(l+1) = cellstr(fullname);
                
                % Title page
                tp = TitlePage();
                tp.Title = 'Data Cleaning Report';
                tp.Author = 'DataCleaningTool';
                tp.Image = which('DataCleaningTool.png');
                tp.Publisher = app.ImportDataEditField.Value;
                tp.PubDate = datestr(now,'yyyy-mm-dd HH:MM:SS.FFF');
                add(d,tp);
                
                % Table of Contents
                toc = TableOfContents;
                add(d, toc);
                
                % Chapter data properties
                if app.DataPropertiesCheckBox.Value ~= 1
                    data = 'Data Properties';
                    switch data
                        case 'Data Properties'
                            % Chapter 2
                            chapter2 = Chapter('Data Properties');
                            
                            add(chapter2,sprintf('Original file used:\n %s', app.ImportDataEditField.Value));
                            
                            % Reads the file with header as a table with column names
                            opts = detectImportOptions(app.ImportDataEditField.Value,'NumHeaderLines',0);
                            format long
                            Tbl = readtable(app.ImportDataEditField.Value,opts);
                            % Original data properties
                            % Extract numerical features
                            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                            index_notnumeric = find(array_numeric==0);
                            Tbl_numeric = removevars(Tbl,index_notnumeric);
                            varNames_numeric = Tbl_numeric.Properties.VariableNames;
                            % Extract date/time features
                            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
                            index_notdatetime = find(array_datetime==0);
                            Tbl_datetime = removevars(Tbl,index_notdatetime);
                            varNames_datetime = Tbl_datetime.Properties.VariableNames;
                            % Extract text features
                            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
                            index_numeric = find(array_numeric==1);
                            index_datetime = find(array_datetime==1);
                            index_nottext = [index_numeric index_datetime];
                            Tbl_text = removevars(Tbl,index_nottext);
                            varNames_text = Tbl_text.Properties.VariableNames;
                            props = dir(app.ImportDataEditField.Value);
                            
                            if isempty(app.IdListBox.Items) == false
                                t1 = BaseTable({'Selected Id Features';string((app.IdListBox.Items)')});
                                t1.Title = 'Id Features';
                                add(chapter2,t1);
                            end
                            
                            if isempty(app.NumericalListBox.Items) == false
                                if app.EditField2_2.Value == 1
                                    m =  GetMissingData(app, Tbl_numeric);
                                    m1 = m';
                                    t = table(varNames_numeric',m1);
                                    tl = sortrows(t,'m1');
                                    t1 = BaseTable({'Original Numerical Features' 'Current Numerical Features';string(tl{:,1}) string((app.NumericalListBox.Items)')});
                                    t1.Title = 'Numerical Features';
                                    add(chapter2,t1);
                                else
                                    t1 = BaseTable({'Original Numerical Features' 'Current Numerical Features';string((varNames_numeric)') string((app.NumericalListBox.Items)')});
                                    t1.Title = 'Numerical Features';
                                    add(chapter2,t1);
                                end
                            end
                            
                            if isempty(app.DatetimeListBox.Items) == false
                                if app.EditField2_2.Value == 1
                                    m =  GetMissingData(app, Tbl_datetime);
                                    m1 = m';
                                    t = table(varNames_datetime',m1);
                                    tl = sortrows(t,'m1');
                                    t2 = BaseTable({'Original Datetime Features' 'Current Datetime Features';string(tl{:,1}) string((app.DatetimeListBox.Items)')});
                                    t2.Title = 'Datetime Features';
                                    add(chapter2,t2);
                                else
                                    t2 = BaseTable({'Original Datetime Features' 'Current Datetime Features';(string(varNames_datetime))' string((app.DatetimeListBox.Items)')});
                                    t2.Title = 'Datetime Features';
                                    add(chapter2,t2);
                                end
                            end
                            
                            if isempty(app.TextListBox.Items) == false
                                if app.EditField2_2.Value == 1
                                    m =  GetMissingData(app, Tbl_text);
                                    m1 = m';
                                    t = table(varNames_text',m1);
                                    tl = sortrows(t,'m1');
                                    t3 = BaseTable({'Original Text Features' 'Current Text Features';string(tl{:,1}) string((app.TextListBox.Items)')});
                                    t3.Title = 'Text Features';
                                    add(chapter2,t3);
                                else
                                    t3 = BaseTable({'Original Text Features' 'Current Text Features';(string(varNames_text))' string((app.TextListBox.Items)')});
                                    t3.Title = 'Text Features';
                                    add(chapter2,t3);
                                end
                            end
                            
                            t4 = BaseTable({'Data' 'File Size in MB' 'Number Of Rows' 'Number Of Columns'; 'Original' sprintf('%0.3f', props.bytes/(1024^2)) size(Tbl,1) size(Tbl,2); 'Current' sprintf('%0.3f', app.FileSizeinMBEditField.Value) app.NumberOfRowsEditField.Value app.NumberOfColumnsEditField.Value});
                            t4.Title = 'File Size';
                            add(chapter2,t4);
                            
                            t5 = BaseTable({'Data' 'Number Of Id Features' 'Number Of Numerical Features' 'Number Of Datetime Features' 'Number Of Text Features'; 'Original' 0 size(Tbl_numeric,2) size(Tbl_datetime,2) size(Tbl_text,2); 'Current' app.NumberOfIdFeaturesEditField.Value app.NumberOfNumericalFeaturesEditField.Value app.NumberOfDateTimeFeaturesEditField.Value app.NumberOfTextFeaturesEditField.Value});
                            t5.Title = 'Feature Count';
                            add(chapter2,t5);
                            
                            t6 = BaseTable({'Number Of Duplicate Rows' 'Number Of Duplicate Columns'; app.NumberOfDuplicateRowsEditField.Value app.NumberOfDuplicateColumnsEditField.Value});
                            t6.Title = 'Duplicate Data';
                            add(chapter2,t6);
                            
                            t7 = BaseTable({'Number Of Deleted Rows' 'Number Of Deleted Columns'; app.NumberOfDeletedRowsEditField.Value app.NumberOfDeletedColumnsEditField.Value});
                            t7.Title = 'Deleted Data';
                            add(chapter2,t7);
                            
                            if app.EditField4.Value == 1
                                tf = BaseTable({'Feature Names'; app.FeatureNamesEditField.Value});
                                tf.Title = 'Feature Names Capitalization';
                                add(chapter2,tf);
                            end
                            
                            if isempty(app.UITableCase.Data) == false
                                table8 = BaseTable(app.UITableCase.Data);
                                table8.Title = 'Case Changed';
                                add(chapter2,table8);
                            end
                            
                            if isempty(app.UITableSpace.Data) == false
                                table9 = BaseTable(app.UITableSpace.Data);
                                table9.Title = 'Extra Space Removed';
                                add(chapter2,table9);
                            end
                            
                            add(chapter2,Section('Title','Missing Data Percentage','Content', sprintf('%0.2f', app.MissingDataPercentageEditField.Value)));
                            
                            t = app.UIMissingObservationsTable.Data;
                            t8 = BaseTable({app.UIMissingObservationsTable.ColumnName{1} app.UIMissingObservationsTable.ColumnName{2}; string(t{:,1}) string(t{:,2})});
                            t8.Title = 'Missing Observations Percentage';
                            add(chapter2,t8);
                            
                            if isempty(app.UITable2_13.Data) == false
                                table10 = BaseTable({'Deleted Features';string(app.UITable2_13.Data)});
                                table10.Title = 'Deleted Features';
                                add(chapter2,table10);
                            end
                            
                            % Create a temporary figure with axes.
                            fig1 = figure;
                            fig1.Visible = 'off';
                            figAxes1 = axes(fig1);
                            cmap = winter(2);
                            colormap(app.UIAxes7,cmap);
                            % Copy all UIAxes children, take over axes limits and aspect ratio.
                            allChildren1 = app.UIAxes6.XAxis.Parent.Children;
                            copyobj(allChildren1, figAxes1)
                            figAxes1.XLim = app.UIAxes6.XLim;
                            figAxes1.YLim = app.UIAxes6.YLim;
                            figAxes1.XTick = app.UIAxes6.XTick;
                            figAxes1.XTickLabel = app.UIAxes6.XTickLabel;
                            figAxes1.XTickLabelRotation = app.UIAxes6.XTickLabelRotation;
                            figAxes1.YTick = app.UIAxes6.YTick;
                            figAxes1.YTickLabel = app.UIAxes6.YTickLabel;
                            figAxes1.DataAspectRatio = app.UIAxes6.DataAspectRatio;
                            colormap(winter(2));
                            colorbar('northoutside','Ticks',[0,1],'TickLabels',{'Observed','Missing'});
                            % Save as png and fig files.
                            saveas(fig1, fullfile(filepath, 'Missingnessplot'), 'png');
                            savefig(fig1, fullfile(filepath, 'Missingnessplot'));
                            % Delete the temporary figure.
                            delete(fig1);
                            imgObj1 = mlreportgen.report.FormalImage();
                            imgObj1.Image = [filepath 'Missingnessplot.png'];
                            widthStr1 = '18in';
                            heightStr1 = '8in';
                            imgObj1.Height = heightStr1;
                            imgObj1.Width =  widthStr1;
                            imgObj1.Caption =  'Missingness plot';
                            add(chapter2,imgObj1);
                            
                            % Create a temporary figure with axes.
                            fig2 = figure;
                            fig2.Visible = 'off';
                            figAxes2 = axes(fig2);
                            % Copy all UIAxes children, take over axes limits and aspect ratio.
                            allChildren2 = app.UIAxes5.XAxis.Parent.Children;
                            copyobj(allChildren2, figAxes2)
                            figAxes2.XLim = app.UIAxes5.XLim;
                            figAxes2.YLim = app.UIAxes5.YLim;
                            figAxes2.XTick = app.UIAxes5.XTick;
                            figAxes2.XTickLabel = app.UIAxes5.XTickLabel;
                            figAxes2.XTickLabelRotation = app.UIAxes5.XTickLabelRotation;
                            figAxes2.YTick = app.UIAxes5.YTick;
                            figAxes2.YTickLabel = app.UIAxes5.YTickLabel;
                            figAxes2.DataAspectRatio = app.UIAxes5.DataAspectRatio;
                            % Save as png and fig files.
                            saveas(fig2, fullfile(filepath, 'MissingObservationsPercentageplot'), 'png');
                            savefig(fig2, fullfile(filepath, 'MissingObservationsPercentageplot'));
                            % Delete the temporary figure.
                            delete(fig2);
                            imgObj2 = mlreportgen.report.FormalImage();
                            imgObj2.Image = [filepath 'MissingObservationsPercentageplot.png'];
                            widthStr2 = '18in';
                            heightStr2 = '8in';
                            imgObj2.Height = heightStr2;
                            imgObj2.Width =  widthStr2;
                            imgObj2.Caption =  'Missing observations percentage plot';
                            add(chapter2,imgObj2);
                            
                            t0 = BaseTable({'Buttons' 'Last Modified Time'; 'Import Column Header Data' app.LastModifiedTime0EditField.Value; 'Id' app.LastModifiedTime1EditField.Value; 'Feature Names' app.LastModifiedTime2EditField.Value; 'Change Case' app.LastModifiedTime3EditField.Value; 'Remove Extra Space' app.LastModifiedTime4EditField.Value; 'Delete Rows' app.LastModifiedTime5EditField.Value; 'Sort Features' app.LastModifiedTime6EditField.Value; 'Delete Feature' app.LastModifiedTime7EditField.Value});
                            t0.Title = 'Timestamp Data';
                            add(chapter2,t0);
                            
                            add(d,chapter2)
                            
                            
                    end
                end
                
                % Chapter numerical features
                if app.NumericalFeaturesCheckBox.Value ~= 1
                    data = 'Numerical Features';
                    switch data
                        case 'Numerical Features'
                            if isempty(app.UINumericTable.Data) == false
                                % Chapter 3
                                chapter3 = Chapter('Numerical Features');
                                
                                t = app.UINumericTable.Data;
                                if numel(app.NumericalListBox.Items) == 1
                                    add(chapter3,Section('Title','Descriptive Statistics','Content',BaseTable({app.UINumericTable.ColumnName{1} app.UINumericTable.ColumnName{2} app.UINumericTable.ColumnName{3} app.UINumericTable.ColumnName{4} app.UINumericTable.ColumnName{5}; string(t{:,1}), t{:,2}, t{:,3}, t{:,4}, t{:,5}})));
                                else
                                    add(chapter3,Section('Title','Descriptive Statistics','Content',BaseTable({app.UINumericTable.ColumnName{1} app.UINumericTable.ColumnName{2} app.UINumericTable.ColumnName{3} app.UINumericTable.ColumnName{4} app.UINumericTable.ColumnName{5}; t{:,1} arrayfun(@(x) num2str(x, "%.2f"), t{:,2}, 'UniformOutput',false) arrayfun(@(x) num2str(x, "%.2f"), t{:,3}, 'UniformOutput',false) t{:,4} arrayfun(@(x) num2str(x, "%.2f"), t{:,5}, 'UniformOutput',false)})));
                                end
                                if (isempty(app.UITable2_2.Data) == false)||(isempty(app.UITable2_6.Data) == false)
                                    add(chapter3,Section('Title','Missing Observations'));
                                end
                                
                                if isempty(app.UITable2_2.Data) == false
                                    t1 = app.UITable2_2.Data;
                                    table1 = BaseTable({app.UITable2_2.ColumnName{1} app.UITable2_2.ColumnName{2}; string(t1{:,1}) string(t1{:,2})});
                                    table1.Title = 'Less Than Feature Constraint';
                                    add(chapter3,table1);
                                end
                                if isempty(app.UITable2_6.Data) == false
                                    t2 = app.UITable2_6.Data;
                                    table2 = BaseTable({app.UITable2_6.ColumnName{1} app.UITable2_6.ColumnName{2}; string(t2{:,1}) string(t2{:,2})});
                                    table2.Title = 'Greater Than Feature Constraint';
                                    add(chapter3,table2);
                                end
                                if (isempty(app.UITable2_7.Data) == false)||(isempty(app.UITable2_8.Data) == false)
                                    add(chapter3,Section('Title','Deleted Rows'));
                                end
                                if isempty(app.UITable2_7.Data) == false
                                    t3 = app.UITable2_7.Data;
                                    table3 = BaseTable({app.UITable2_7.ColumnName{1} app.UITable2_7.ColumnName{2}; string(t3{:,1}) string(t3{:,2})});
                                    table3.Title = 'Less Than Feature Constraint';
                                    add(chapter3,table3);
                                end
                                if isempty(app.UITable2_8.Data) == false
                                    t4 = app.UITable2_8.Data;
                                    table4 = BaseTable({app.UITable2_8.ColumnName{1} app.UITable2_8.ColumnName{2}; string(t4{:,1}) string(t4{:,2})});
                                    table4.Title = 'Greater Than Feature Constraint';
                                    add(chapter3,table4);
                                end
                                t0 = BaseTable({'Buttons' 'Last Modified Time'; 'Remove Observations' app.LastModifiedTime8EditField.Value; 'Delete Rows' app.LastModifiedTime9EditField.Value});
                                t0.Title = 'Timestamp Data';
                                add(chapter3,t0);
                                
                                add(d,chapter3);
                            end
                    end
                end
                
                % Chapter datetime features
                if app.DatetimeFeaturesCheckBox.Value ~= 1
                    data = 'Datetime Features';
                    switch data
                        case 'Datetime Features'
                            if isempty(app.UIDatetimeTable.Data) == false
                                % Chapter 4
                                chapter4 = Chapter('Datetime Features');
                                
                                t = app.UIDatetimeTable.Data;
                                t(:,2) = cellstr(string(app.UIDatetimeTable.Data{:,2}));
                                t(:,3) = cellstr(string(app.UIDatetimeTable.Data{:,3}));
                                if numel(app.DatetimeListBox.Items) == 1
                                    add(chapter4,Section('Title','Descriptive Statistics','Content',BaseTable({app.UIDatetimeTable.ColumnName{1} app.UIDatetimeTable.ColumnName{2} app.UIDatetimeTable.ColumnName{3} app.UIDatetimeTable.ColumnName{4}; string(t{:,1}), string(t{:,2}), string(t{:,3}), t{:,4}})));
                                else
                                    add(chapter4,Section('Title','Descriptive Statistics','Content',BaseTable({app.UIDatetimeTable.ColumnName{1} app.UIDatetimeTable.ColumnName{2} app.UIDatetimeTable.ColumnName{3} app.UIDatetimeTable.ColumnName{4}; t{:,1} t{:,2} t{:,3} arrayfun(@(x) num2str(x, "%.2f"), t{:,4}, 'UniformOutput',false)})));
                                end
                                
                                if isempty(app.UITable2.Data) == false
                                    add(chapter4,Section('Title','Changed Format'));
                                end
                                if isempty(app.UITable2.Data) == false
                                    t0 = app.UITable2.Data;
                                    table0 = BaseTable({app.UITable2.ColumnName{1} app.UITable2.ColumnName{2}; string(t0{:,1}) string(t0{:,2})});
                                    table0.Title = 'Format';
                                    add(chapter4,table0);
                                end
                                if (isempty(app.UITable2_9.Data) == false)||(isempty(app.UITable2_11.Data) == false)
                                    add(chapter4,Section('Title','Missing Observations'));
                                end
                                if isempty(app.UITable2_9.Data) == false
                                    t1 = app.UITable2_9.Data;
                                    table1 = BaseTable({app.UITable2_9.ColumnName{1} app.UITable2_9.ColumnName{2}; string(t1{:,1}) string(t1{:,2})});
                                    table1.Title = 'Less Than Feature Constraint';
                                    add(chapter4,table1);
                                end
                                if isempty(app.UITable2_11.Data) == false
                                    t2 = app.UITable2_11.Data;
                                    table2 = BaseTable({app.UITable2_11.ColumnName{1} app.UITable2_11.ColumnName{2}; string(t2{:,1}) string(t2{:,2})});
                                    table2.Title = 'Greater Than Feature Constraint';
                                    add(chapter4,table2);
                                end
                                if (isempty(app.UITable2_10.Data) == false)||(isempty(app.UITable2_12.Data) == false)
                                    add(chapter4,Section('Title','Deleted Rows'));
                                end
                                if isempty(app.UITable2_10.Data) == false
                                    t3 = app.UITable2_10.Data;
                                    table3 = BaseTable({app.UITable2_10.ColumnName{1} app.UITable2_10.ColumnName{2}; string(t3{:,1}) string(t3{:,2})});
                                    table3.Title = 'Less Than Feature Constraint';
                                    add(chapter4,table3);
                                end
                                if isempty(app.UITable2_12.Data) == false
                                    t4 = app.UITable2_12.Data;
                                    table4 = BaseTable({app.UITable2_12.ColumnName{1} app.UITable2_12.ColumnName{2}; string(t4{:,1}) string(t4{:,2})});
                                    table4.Title = 'Greater Than Feature Constraint';
                                    add(chapter4,table4);
                                end
                                t0 = BaseTable({'Buttons' 'Last Modified Time'; 'Convert To Excel DATEVALUE' app.LastModifiedTime10EditField.Value;'Change Format' app.LastModifiedTime11EditField.Value;'Remove Observations' app.LastModifiedTime12EditField.Value; 'Delete Rows' app.LastModifiedTime13EditField.Value});
                                t0.Title = 'Timestamp Data';
                                add(chapter4,t0);
                                
                                add(d,chapter4);
                            end
                    end
                end
                
                % Chapter text features
                if app.TextFeaturesCheckBox.Value ~= 1
                    data = 'Text Features';
                    switch data
                        case 'Text Features'
                            
                            % Chapter 5
                            chapter5 = Chapter('Text Features');
                            
                            t = app.UITextTable.Data;
                            if numel(app.TextListBox.Items) == 1
                                add(chapter5,Section('Title','Descriptive Statistics','Content',BaseTable({app.UITextTable.ColumnName{1} app.UITextTable.ColumnName{4}; string(t{:,1}), t{:,4}})));
                            else
                                add(chapter5,Section('Title','Descriptive Statistics','Content',BaseTable({app.UITextTable.ColumnName{1} app.UITextTable.ColumnName{4}; t{:,1} arrayfun(@(x) num2str(x, "%.2f"), t{:,4}, 'UniformOutput',false)})));
                            end
                            if isempty(app.UITableCategoryText_2.Data) == false
                                add(chapter5,Section('Title','Similar Categories'));
                                t1 = app.UITableCategoryText_2.Data;
                                table1 = BaseTable({app.UITableCategoryText_2.ColumnName{1} app.UITableCategoryText_2.ColumnName{2}; string(t1{:,1}) string(t1{:,2})});
                                table1.Title = 'Selected Similar Categories';
                                add(chapter5,table1);
                            end
                            if isempty(app.categoryEditField) == false
                                if app.categoryEditField == "Transform n categories to n dummy variables for all text features"
                                    add(chapter5,Section('Title','Transformed Categories To Dummy Variables','Content',app.categoryEditField.Value));
                                else
                                    add(chapter5,Section('Title','Transformed Categories To Dummy Variables','Content',app.categoryEditField.Value));
                                end
                            end
                            if app.EditField2_3.Value == 1
                                add(chapter5,'Remove Observations');
                            end
                            if app.EditField2_4.Value == 1
                                add(chapter5,'Delete Rows');
                            end
                            t0 = BaseTable({'Buttons' 'Last Modified Time'; 'Label Encoding' app.LastModifiedTime14EditField.Value; 'One Hot Encoding' app.LastModifiedTime15EditField.Value;'Select Similar Categories' app.LastModifiedTime16EditField.Value;'Remove Observations' app.LastModifiedTime17EditField.Value; 'Delete Rows' app.LastModifiedTime18EditField.Value});
                            t0.Title = 'Timestamp Data';
                            add(chapter5,t0);
                            
                            add(d,chapter5);
                            
                    end
                end
                
                % Chapter imputation
                if app.ImputationCheckBox.Value ~= 1
                    data = 'Imputation';
                    switch data
                        case 'Imputation'
                            if app.EditField2.Value == 1
                                % Chapter 8
                                chapter8 = Chapter('Imputation');
                                add(chapter8,Section('Title','Percentage Of Missing Data Imputed','Content',app.PercentageofMissingDataEditField.Value));
                                
                                % Create a temporary figure with axes.
                                fig3 = figure;
                                fig3.Visible = 'off';
                                figAxes3 = axes(fig3);
                                cmap = winter(2);
                                colormap(app.UIAxes9,cmap);
                                % Copy all UIAxes children, take over axes limits and aspect ratio.
                                allChildren3 = app.UIAxes8.XAxis.Parent.Children;
                                copyobj(allChildren3, figAxes3)
                                figAxes3.XLim = app.UIAxes8.XLim;
                                figAxes3.YLim = app.UIAxes8.YLim;
                                figAxes3.XTick = app.UIAxes8.XTick;
                                figAxes3.XTickLabel = app.UIAxes8.XTickLabel;
                                figAxes3.XTickLabelRotation = app.UIAxes8.XTickLabelRotation;
                                figAxes3.YTick = app.UIAxes8.YTick;
                                figAxes3.YTickLabel = app.UIAxes8.YTickLabel;
                                figAxes3.DataAspectRatio = app.UIAxes8.DataAspectRatio;
                                colormap(winter(2));
                                colorbar('northoutside','Ticks',[0,1],'TickLabels',{'Observed','Imputed'});
                                % Save as png and fig files.
                                saveas(fig3, fullfile(filepath, 'Imputationplot'), 'png');
                                savefig(fig3, fullfile(filepath, 'Imputationplot'));
                                % Delete the temporary figure.
                                delete(fig3);
                                imgObj3 = mlreportgen.report.FormalImage();
                                imgObj3.Image = [filepath 'Imputationplot.png'];
                                widthStr3 = '18in';
                                heightStr3 = '8in';
                                imgObj3.Height = heightStr3;
                                imgObj3.Width =  widthStr3;
                                imgObj3.Caption =  'Imputation plot';
                                add(chapter8,imgObj3);
                                
                                if isempty(app.UITable2_14.Data) == false
                                table0 = BaseTable({'Deleted Features';string(app.UITable2_14.Data)});
                                table0.Title = 'Deleted Features';
                                add(chapter8,table0);
                                end
                                
                                t0 = BaseTable({'Buttons' 'Last Modified Time'; 'Delete Feature' app.LastModifiedTime19EditField.Value; 'Impute' app.LastModifiedTime20EditField.Value});
                                t0.Title = 'Timestamp Data';
                                add(chapter8,t0);
                                add(d,chapter8);
                            end
                    end
                end
                
                % Chapter data transformation
                if app.DataTransformationCheckBox.Value ~= 1
                    data = 'Data Transformation';
                    switch data
                        case 'Data Transformation'
                            % Chapter 9
                            chapter9 = Chapter('Data transformation');
                            t1 = BaseTable((app.SelectedListBox.Items)');
                            t1.Title = 'Selected Numerical Features';
                            add(chapter9,t1)
                            
                            add(chapter9,Section('Title','Selected Numerical Features','Content', app.SelectedListBox.Items));
                            
                            add(chapter9,Section('Title','Type Of Data Transformation','Content', app.transformationEditField.Value));
                            
                            t0 = BaseTable({'Buttons' 'Last Modified Time'; 'Transform' app.LastModifiedTime21EditField.Value});
                            t0.Title = 'Timestamp Data';
                            add(chapter9,t0);
                            add(d,chapter9);
                    end
                end
                
                % Chapter save data
                if app.SaveDataCheckBox.Value ~= 1
                    data = 'Save Data';
                    switch data
                        case 'Save Data'
                            % Chapter 10
                            chapter10 = Chapter('Save Data');
                            add(chapter10,app.ListBox.Items);
                            t0 = BaseTable({'Buttons' 'Last Modified Time'; 'Save' app.LastModifiedTime22EditField.Value});
                            t0.Title = 'Timestamp Data';
                            add(chapter10,t0);
                            add(d,chapter10);
                    end
                end
                
                close(d);
                % View report
                rptview(d);
                
                % Changes background color to black
                app.GenerateReportButton.BackgroundColor = [0,0,0];
            end
        end

        % Value changed function: DropDown_2
        function DropDown_2ValueChanged(app, event)
            value = app.DropDown_2.Value;
            
            app.caseEditField.Value = value;
            if strcmp(app.caseEditField.Value, "Select") == 0
                if isempty(app.UITableCase.Data) == true
                    app.UITableCase.Data{1,2} = char(value);
                else
                    l = size(app.UITableCase.Data(:,2),1);
                    app.UITableCase.Data{l+1,2} = char(value);
                end
            end
        end

        % Button pushed function: RemoveExtraSpaceButton
        function RemoveExtraSpaceButtonPushed(app, event)
            % Changes background color to grey
            app.RemoveExtraSpaceButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Remove extra space
            % Present table
            Tbl = app.UIMainTable.Data;
            if isempty(app.spaceEditField.Value) == false
                if isempty(app.EditField_2.Value) == false
                    if app.spaceEditField.Value == "Remove all spaces"
                        Tbl.(string(app.EditField_2.Value)) = cellstr(strrep(Tbl.(string(app.EditField_2.Value)),' ',''));
                    else
                        Tbl.(string(app.EditField_2.Value)) = regexprep(Tbl.(string(app.EditField_2.Value)), ' +', ' ');
                    end
                end
            end
            app.EditField.Value = '';
            app.EditField_2.Value = '';
            app.spaceEditField.Value = '';
            app.DropDown.Value = 'Select';
            app.NumericalListBox.Value = {};
            app.DatetimeListBox.Value = {};
            app.TextListBox.Value = {};
            
            % Current data widget
            % Displays the original table with column names
            app.UIMainTable.Data = Tbl;
            app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
            % Undo
            Tbl_true = app.UIMainTable.Data;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            end
            
            % Last modified time
            app.LastModifiedTime4EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.RemoveExtraSpaceButton.BackgroundColor = [0,0,0];
        end

        % Value changed function: NumericalListBox
        function NumericalListBoxValueChanged(app, event)
            value = app.NumericalListBox.Value;
            
            app.EditField.Value = value;
            app.EditField_2.Value = value;
            if isempty(app.caseEditField.Value) == false
                l = size(app.UITableCase.Data(:,2),1);
                app.UITableCase.Data{l,1} = char(value);
            elseif isempty(app.spaceEditField.Value) == false
                l = size(app.UITableSpace.Data(:,2),1);
                app.UITableSpace.Data{l,1} = char(value);
            end
        end

        % Value changed function: TextListBox
        function TextListBoxValueChanged(app, event)
            value = app.TextListBox.Value;
            app.EditField.Value = value;
            app.EditField_2.Value = value;
            if isempty(app.caseEditField.Value) == false
                l = size(app.UITableCase.Data(:,2),1);
                app.UITableCase.Data{l,1} = char(value);
            elseif isempty(app.spaceEditField.Value) == false
                l = size(app.UITableSpace.Data(:,2),1);
                app.UITableSpace.Data{l,1} = char(value);
            end
        end

        % Value changed function: DatetimeListBox
        function DatetimeListBoxValueChanged(app, event)
            value = app.DatetimeListBox.Value;
            app.EditField.Value = value;
            app.EditField_2.Value = value;
            if isempty(app.caseEditField.Value) == false
                l = size(app.UITableCase.Data(:,2),1);
                app.UITableCase.Data{l,1} = char(value);
            elseif isempty(app.spaceEditField.Value) == false
                l = size(app.UITableSpace.Data(:,2),1);
                app.UITableSpace.Data{l,1} = char(value);
            end
        end

        % Button pushed function: ChangeCaseButton
        function ChangeCaseButtonPushed(app, event)
            % Changes background color to grey
            app.ChangeCaseButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Present table
            Tbl = app.UIMainTable.Data;
            % Change case
            if isempty(app.caseEditField.Value) == false
                if isempty(app.EditField.Value) == false
                    if app.caseEditField.Value == "lower case"
                        Tbl.(string(app.EditField.Value)) = lower(Tbl.(string(app.EditField.Value)));
                    elseif app.caseEditField.Value == "UPPER CASE"
                        Tbl.(string(app.EditField.Value)) = upper(Tbl.(string(app.EditField.Value)));
                    else
                        Tbl.(string(app.EditField.Value)) = regexprep(Tbl.(string(app.EditField.Value)),'(\<[a-z])','${upper($1)}');
                    end
                end
            end
            app.EditField.Value = '';
            app.EditField_2.Value = '';
            app.caseEditField.Value = '';
            app.DropDown_2.Value = 'Select';
            app.NumericalListBox.Value = {};
            app.DatetimeListBox.Value = {};
            app.TextListBox.Value = {};
            
            % Current data widget
            % Displays the original table with column names
            app.UIMainTable.Data = Tbl;
            app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
            % Undo
            Tbl_true = app.UIMainTable.Data;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            end
            
            % Last modified time
            app.LastModifiedTime3EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.ChangeCaseButton.BackgroundColor = [0,0,0];
        end

        % Value changed function: DropDown
        function DropDownValueChanged(app, event)
            value = app.DropDown.Value;
            app.spaceEditField.Value = value;
            if strcmp(app.spaceEditField.Value, "Select") == 0
                if isempty(app.UITableSpace.Data) == true
                    app.UITableSpace.Data{1,2} = char(value);
                else
                    l = size(app.UITableSpace.Data(:,2),1);
                    app.UITableSpace.Data{l+1,2} = char(value);
                end
            end
        end

        % Value changed function: SelectNumericalFeaturesListBox
        function SelectNumericalFeaturesListBoxValueChanged(app, event)
            value = app.SelectNumericalFeaturesListBox.Value;
            
            l = numel(app.SelectedListBox.Items);
            app.SelectedListBox.Items(l+1) = value;
        end

        % Value changed function: DropDown_4
        function DropDown_4ValueChanged(app, event)
            value = app.DropDown_4.Value;
            app.categoryEditField.Value = value;
        end

        % Button pushed function: DeleteFeatureButton
        function DeleteFeatureButtonPushed2(app, event)
            % Changes background color to grey
            app.DeleteFeatureButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Delete features
            if app.EditFieldWhatsLeft1.Value ~= 0
                i = app.EditFieldWhatsLeft1.Value;
                if isempty(app.UITable2_13.Data) == true
                    app.UITable2_13.Data{1,1} = char(app.UIMissingObservationsTable.Data{i,1});
                else
                    l = size(app.UITable2_13.Data,1);
                    app.UITable2_13.Data{l+1,1} = char(app.UIMissingObservationsTable.Data{i,1});
                end
                index = find(string(app.UIMainTable.ColumnName) == string(app.UIMissingObservationsTable.Data{i,1}));
                app.IdListBox.Items(find(app.IdListBox.Items == string(app.UIMissingObservationsTable.Data{i,1}))) = [];
                app.UIMissingObservationsTable.Data(i,:) = [];
                app.UIMainTable.Data(:,index) = [];
                app.UIMainTable.ColumnName(index) = [];
            end
            
            % 1 Current table %
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % 2 Data properties %
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of id features
            if isempty(app.IdListBox.Items) == false
                app.NumberOfIdFeaturesEditField.Value = numel(app.IdListBox.Items);
            else
                app.NumberOfIdFeaturesEditField.Value = 0;
            end
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime7EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to cyan
            app.DeleteFeatureButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: DeleteRowsButton
        function DeleteRowsButtonPushed(app, event)
            % Changes background color to grey
            app.DeleteRowsButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Delete rows
            % Present table
            Tbl = app.UIMainTable.Data;
            indices = app.EditField_8.Value:app.EditField_9.Value;
            lengthOfIndices = length(indices);
            Tbl(indices, :) = [];
            app.UIMainTable.Data = Tbl;
            
            % Current data widget
            % Displays the original table with column names
            app.UIMainTable.Data = Tbl;
            app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted rows
            app.NumberOfDeletedRowsEditField.Value = app.NumberOfDeletedRowsEditField.Value + lengthOfIndices;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays percentage of missing data to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime5EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.DeleteRowsButton.BackgroundColor = [0,0,0];
        end

        % Value changed function: DeleteRowsMinSlider
        function DeleteRowsMinSliderValueChanged(app, event)
            value = app.DeleteRowsMinSlider.Value;
            app.EditField_8.Value = round(value);
        end

        % Value changed function: DeleteRowsMaxSlider
        function DeleteRowsMaxSliderValueChanged(app, event)
            value = app.DeleteRowsMaxSlider.Value;
            app.EditField_9.Value = round(value);
        end

        % Button pushed function: SortFeaturesButton
        function SortFeaturesButtonPushed(app, event)
            % Changes background color to grey
            app.SortFeaturesButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Sort features
            if isempty(app.UIMissingObservationsTable.Data) == false
                app.EditField2_2.Value = 1;
                % Present table
                Tbl = app.UIMainTable.Data;
                varNames = Tbl.Properties.VariableNames;
                m =  GetMissingData(app, Tbl);
                m1 = m';
                t = table(varNames',m1);
                t1 = sortrows(t,'m1');
                app.UIMissingObservationsTable.Data = t1;
                app.UIMissingObservationsTable_2.Data = t1;
                A = zeros(size(Tbl,1), size(Tbl,2));
                % Missingness plot
                for i =1:size(t1,1)
                    A(:,i) = ismissing(Tbl.(string(app.UIMissingObservationsTable.Data{i,1})));
                end
                imagesc(app.UIAxes6,A);
                cmap = winter(2);
                colormap(app.UIAxes7,cmap);
                app.UIAxes6.XTick = 1:length(app.UIMissingObservationsTable.Data{:,1});
                app.UIAxes6.XTickLabel = string(app.UIMissingObservationsTable.Data{:,1});
                app.UIAxes6.YTick = [1 size(Tbl,1)];
                app.UIAxes6.YDir = 'normal';
                
                % plot
                bar(app.UIAxes5,0:length(varNames)-1,app.UIMissingObservationsTable.Data{:,2});
                app.UIAxes5.XTick = 0:length(varNames)-1;
                app.UIAxes5.XTickLabel = app.UIMissingObservationsTable.Data{:,1};
                app.UIAxes5.YLim = [0 100];
                
                index = zeros(1,size(Tbl,2));
                for i = 1:size(Tbl,2)
                    index(i) = find(varNames == string(t1{i,1}));
                end
                Tbl1 = Tbl(:,index);
                app.UIMainTable.Data = Tbl1;
                app.UIMainTable.ColumnName = Tbl1.Properties.VariableNames;
            end
            
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime6EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.SortFeaturesButton.BackgroundColor = [0,0,0];
        end

        % Value changed function: DataTransformationDropDown
        function DataTransformationDropDownValueChanged(app, event)
            value = app.DataTransformationDropDown.Value;
            app.transformationEditField.Value = value;
        end

        % Value changed function: SelectedListBox
        function SelectedListBoxValueChanged(app, event)
            value = app.SelectedListBox.Value;
            
            % Numerical Features
            Tbl = app.UIMainTable.Data;
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            
            % Plot histogram for the selected feature
            nbins = app.NumberofBinsEditField_2.Value;
            if nbins == 0
                histogram(app.UIAxes_2,Tbl_numeric.(string(value)))
            else
                histogram(app.UIAxes_2,Tbl_numeric.(string(value)),nbins)
            end
            app.UIAxes_2.XLabel.Interpreter = 'latex';
            app.UIAxes_2.XLabel.String = string(value);
        end

        % Cell selection callback: UIMissingObservationsTable
        function UIMissingObservationsTableCellSelection2(app, event)
            indices = event.Indices;
            app.EditFieldWhatsLeft1.Value = indices(1);
        end

        % Button pushed function: ImputeButton
        function ImputeButtonPushed(app, event)
            % Changes background color to grey
            app.ImputeButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            app.EditField2.Value = 1;
            app.UIAxes8.Visible = 'on';
            % Tbl an n×p table
            Tbl = app.UIMainTable.Data;
            varNames = Tbl.Properties.VariableNames;
            
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_datetime = find(array_datetime==1);
            
            % Remove date/time features
            X = removevars(Tbl,index_datetime);
            varNames_X = X.Properties.VariableNames;
            
            if any(any(ismissing(Tbl(:,index_datetime)))) == 1
                app.ImputationErrorEditField.Visible = 'on';
                app.ImputationErrorEditField.Value = sprintf('Message. Datetime imputation is not possible.');
                % Displays missing data percentage imputed
                app.PercentageofMissingDataImputedEditField.Value = round((length(find(ismissing(X)==1))/numel(Tbl))*100,2);
                % Imputation plot
                A = flip(ismissing(X));
                imagesc(app.UIAxes8,A);
                cmap = jet(2);
                colormap(app.UIAxes8,cmap);
                app.UIAxes8.XTick = 1:length(varNames_X);
                app.UIAxes8.XTickLabel = varNames_X;
                app.UIAxes8.YTick = [1 size(X,1)];
                app.UIAxes8.YTickLabel = {string(size(X,1)), '1'};
                app.UIAxes8.YDir = 'normal';
                colormap(app.UIAxes9,cmap);
                cb = colorbar(app.UIAxes9,'south','FontSize',8,'Limits',[0 1]);
                cb.Ticks = [0 1];
                cb.TickLabels = {'Observed','Imputed'};
                set(cb,'position',[0.45 0.4 .09 .3])
            else
                % Displays missing data percentage imputed
                app.PercentageofMissingDataImputedEditField.Value = app.PercentageofMissingDataEditField.Value;
                % Imputation plot
                A = flip(ismissing(Tbl));
                imagesc(app.UIAxes8,A);
                cmap = jet(2);
                colormap(app.UIAxes8,cmap);
                app.UIAxes8.XTick = 1:length(varNames);
                app.UIAxes8.XTickLabel = varNames;
                app.UIAxes8.YTick = [1 size(Tbl,1)];
                app.UIAxes8.YTickLabel = {string(size(Tbl,1)), '1'};
                app.UIAxes8.YDir = 'normal';
                colormap(app.UIAxes9,cmap);
                cb = colorbar(app.UIAxes9,'south','FontSize',8,'Limits',[0 1]);%,'Ticks',[0 1],'TickLabels',{'Observed','Missing'});
                cb.Ticks = [0 1];
                cb.TickLabels = {'Observed','Imputed'};
                set(cb,'position',[0.45 0.4 .09 .3])
            end
            
            % Extract numerical features
            array_numeric = varfun(@isnumeric,X,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            X_numeric = removevars(X,index_notnumeric);
            varNames_numeric = X_numeric.Properties.VariableNames;
            
            % Extract numerical indices and text indices
            index_numeric = find(array_numeric==1);
            index_text = find(array_numeric==0);
            
            % Stopping criterion gamma
            diff_old = 10^15;
            diff_new = 10^12;
            
            % Make initial guess for missing values
            X_initialguess = fillmissing(X,'nearest');
            
            % k = vector of sorted indices of columns in X w.r.t. increasing amount of missing values
            missing1 = ismissing(X);
            
            m = zeros(1,size(X,2));
            indexMissing = {};
            indexObserved = {};
            for i=1:size(X,2)
                indexMissing{i} = find(missing1(:,i)==1);
                indexObserved{i} = find(missing1(:,i)==0);
                m(i) = length(find(missing1(:,i)==1));
            end
            
            m1 = m';
            index1=1:size(X,2);
            t = table(index1',m1);
            t_sorted = sortrows(t,'m1');
            k = t_sorted{:,1};
            
            % while not gamma do
            % Initialize iteration
            iteration = 1;
            Delta_F = {};
            while diff_new < diff_old
                diff_old = diff_new;
                % Ximpold = store previously imputed matrix
                X_oldimp = X_initialguess;
                X_old = X_initialguess;
                % for s in k do
                for i = 1:length(k)
                    
                    s = k(i);
                    if m1(s)~=0
                        y_obs = X_old(indexObserved{s},s);
                        
                        x_obs = X_old(indexObserved{s},:);
                        x_obs(:,s) = [];
                        
                        x_mis = X_old(indexMissing{s},:);
                        x_mis(:,s) = [];
                        
                        % Fit a random forest: y_obs(s)~x_obs(s)
                        NumTrees = app.NumberofTreesEditField.Value;
                        if any(varNames_numeric == string(X_old.Properties.VariableNames{s})) == 1
                            Mdl = TreeBagger(NumTrees,x_obs,y_obs,'Method','regression');
                        else
                            Mdl = TreeBagger(NumTrees,x_obs,y_obs,'Method','classification');
                        end
                        
                        % Predict y_mis(s) using x_mis(s)
                        y_misnew = predict(Mdl,x_mis);
                        
                        % Ximpnew = update imputed matrix, using predicted y(s)mis
                        X_newimp = X_old;
                        X_newimp{indexMissing{s},s} = y_misnew;
                        
                        % Initialize X_old again
                        X_old = X_newimp;
                    end
                end
                % Update gamma
                Delta_N = sum(sum((X_newimp{:,index_numeric} - X_oldimp{:,index_numeric}).^2))/sum(sum((X_newimp{:,index_numeric}).^2));
                
                I = 0;
                for j = 1:length(index_text)
                    j_text = index_text(j);
                    for i = 1:size(X,1)
                        if isequal(X_newimp{i,j_text}, X_oldimp{i,j_text}) == 0
                            I = I+1;
                        end
                    end
                end
                Delta_F_denominator = sum(t{index_text,2});
                if Delta_F_denominator ~= 0
                    Delta_F{iteration} = I/Delta_F_denominator;
                else
                    Delta_F{iteration} = 0;
                end
                
                diff_new = Delta_N + Delta_F{iteration};
                
                % Initial guess changes
                X_initialguess = X_newimp;
                
                % Iteration increases by 1
                iteration = iteration + 1;
            end
            % Return the imputed matrix Ximp
            X_imputed = X_oldimp;
            varNames_imputed = X_imputed.Properties.VariableNames;
            % Current data widget
            % Displays the original table with column names
            for i = 1:length(varNames_imputed)
                Tbl.(string(varNames_imputed(i))) = X_imputed{:,i};
            end
            
            app.UIMainTable.Data = Tbl;
            app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted rows
            app.NumberOfDeletedRowsEditField.Value = app.ActualNoOfRowsEditField.Value - app.NumberOfRowsEditField.Value;
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - app.NumberOfColumnsEditField.Value;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime20EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.ImputeButton.BackgroundColor = [0,0,0];
        end

        % Value changed function: IdListBox
        function IdListBoxValueChanged(app, event)
             value = app.IdListBox.Value;
        end

        % Button pushed function: IdButton
        function IdButtonPushed(app, event)
            % Changes background color to grey
            app.IdButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Clears the numeric, the datetime and the text descriptive statistics tables
            app.UINumericTable.Data = {};
            app.UIDatetimeTable.Data = {};
            app.UITextTable.Data = {};
            
            % Seperates id feature from numeric or datetime or text feature
            if ismember(app.NumericalListBox.Value,app.NumericalListBox.Items)
                value = app.NumericalListBox.Value;
            elseif ismember(app.DatetimeListBox.Value,app.DatetimeListBox.Items)
                value = app.DatetimeListBox.Value;
            elseif ismember(app.TextListBox.Value,app.TextListBox.Items)
                value = app.TextListBox.Value;
            end
            l = numel(app.IdListBox.Items);
            app.IdListBox.Items{l+1} = char(value);
            app.NumericalListBox.Value = {};
            app.DatetimeListBox.Value = {};
            app.TextListBox.Value = {};
            app.UINumericTable.Data = {};
            app.UIDatetimeTable.Data = {};
            app.UITextTable.Data = {};
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            % Displays the number of id features
            app.NumberOfIdFeaturesEditField.Value = numel(app.IdListBox.Items);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime1EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.IdButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: UndoButton
        function UndoButtonPushed(app, event)
            % Changes background color to grey
            app.UndoButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            app.EditField0.Value = app.EditField0.Value+1;
            
            l = numel(app.ListBox0.Items);
            
            if l-app.EditField0.Value > 0
                fname0 = app.ListBox0.Items{l-app.EditField0.Value};
                load(fname0);
                varNames_true = Tbl_true.Properties.VariableNames;
                
                fname1 = app.ListBox1.Items{l-app.EditField0.Value};
                load(fname1);
                varNames = Tbl.Properties.VariableNames;
                
                % Current data widget
                % Displays the original table with column names
                app.UIMainTable.Data = Tbl_true;
                app.UIMainTable.ColumnName = varNames_true;
                % Extract id features
                if size(Tbl,2)==size(Tbl_true,2)
                    app.IdListBox.Items = {};
                else
                    % Find the intersection
                    [~,ia,~] = intersect(varNames_true,varNames);
                    % Remove from A the intersection of A and B
                    AminusB = varNames_true;
                    AminusB(ia) = [];
                    app.IdListBox.Items = AminusB;
                end
                % Extract numerical features
                array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                index_notnumeric = find(array_numeric==0);
                Tbl_numeric = removevars(Tbl,index_notnumeric);
                varNames_numeric = Tbl_numeric.Properties.VariableNames;
                app.NumericalListBox.Items = string(varNames_numeric);
                % Extract date/time features
                array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
                index_notdatetime = find(array_datetime==0);
                Tbl_datetime = removevars(Tbl,index_notdatetime);
                varNames_datetime = Tbl_datetime.Properties.VariableNames;
                app.DatetimeListBox.Items = string(varNames_datetime);
                % Extract text features
                array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
                index_numeric = find(array_numeric==1);
                index_datetime = find(array_datetime==1);
                index_nottext = [index_numeric index_datetime];
                Tbl_text = removevars(Tbl,index_nottext);
                varNames_text = Tbl_text.Properties.VariableNames;
                app.TextListBox.Items = string(varNames_text);
                
                % Data properties widget
                writetable(Tbl_true,'filesize.csv')
                props = dir('filesize.csv');
                % Displays the file size in megabytes
                app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
                delete('filesize.csv');
                % Displays the number of rows
                app.NumberOfRowsEditField.Value = size(Tbl_true,1);
                % Displays the number of columns
                app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
                % Displays the number of id features
                app.NumberOfIdFeaturesEditField.Value = numel(app.IdListBox.Items);
                % Displays the number of numerical features
                app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
                % Displays the number of datetime features
                app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
                % Displays the number of text features
                app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
                % Displays the number of duplicate rows
                app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
                % Displays the number of duplicate columns
                app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
                % Displays the number of deleted rows
                if size(Tbl_true,1)==app.ActualNoOfRowsEditField.Value
                    app.NumberOfDeletedRowsEditField.Value = 0;
                else
                    app.NumberOfDeletedRowsEditField.Value = app.ActualNoOfRowsEditField.Value - size(Tbl_true,1);
                end
                % Displays the number of deleted columns
                if size(Tbl_true,2)==app.ActualNoOfColumnsEditField.Value
                    app.NumberOfDeletedColumnsEditField.Value = 0;
                else
                    app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
                end
                % Missingness plot
                A = flip(ismissing(Tbl_true));
                imagesc(app.UIAxes6,A);
                cmap = winter(2);
                colormap(app.UIAxes7,cmap);
                app.UIAxes6.XTick = 1:length(varNames_true);
                app.UIAxes6.XTickLabel = varNames_true;
                app.UIAxes6.YTick = [1,size(Tbl_true,1)];
                app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
                app.UIAxes6.YDir = 'normal';
                colormap(app.UIAxes7,cmap);
                cb = colorbar(app.UIAxes7,'south','FontSize',8,'Limits',[0 1],'Ticks',[0 1],'TickLabels',{'Observed','Missing'});
                set(cb,'position',[0.45 0.4 .09 .3])
                % Displays the limits of two sliders
                app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
                app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
                app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
                app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
                app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
                app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
                % Displays missing data percentage
                app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
                % Missing observations percentage table
                m =  GetMissingData(app, Tbl_true);
                t = table(varNames_true',m');
                app.UIMissingObservationsTable.Data = t;
                % Missing observations percentage plot
                bar(app.UIAxes5,0:length(varNames_true)-1,m);
                app.UIAxes5.XTick = 0:length(varNames_true)-1;
                app.UIAxes5.XTickLabel = varNames_true;
                app.UIAxes5.YLim = [0 100];
                
                % Numerical features tab
                % Descriptive statistics
                if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                    a_numeric = zeros(1,size(Tbl_numeric,2));
                    c_numeric = zeros(1,size(Tbl_numeric,2));
                    d_numeric = zeros(1,size(Tbl_numeric,2));
                    l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                    g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                    e_numeric = zeros(1,size(Tbl_numeric,2));
                    f_numeric = zeros(1,size(Tbl_numeric,2));
                    for i = 1:size(Tbl_numeric,2)
                        a_numeric(i)=min(Tbl_numeric{:,i});
                        c_numeric(i)=max(Tbl_numeric{:,i});
                        d_numeric(i)=GetDuplicateValues(app, Tbl_numeric{:,i});
                        e_numeric(i)=min(Tbl_numeric{:,i});
                        f_numeric(i)=max(Tbl_numeric{:,i});
                    end
                    x = Tbl_numeric;
                    m_numeric =  GetMissingData(app, x);
                    t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                    t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                    t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                    app.UINumericTable.Data = t1;
                end
                
                % Datetime features tab
                % Descriptive statistics
                if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                    a_datetime = cell([1 size(Tbl_datetime,2)]);
                    c_datetime = cell([1 size(Tbl_datetime,2)]);
                    DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                    l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                    g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                    e_datetime = cell([1 size(Tbl_datetime,2)]);
                    f_datetime = cell([1 size(Tbl_datetime,2)]);
                    for i = 1:size(Tbl_datetime,2)
                        a_datetime{i}=min(Tbl_datetime{:,i});
                        c_datetime{i}=max(Tbl_datetime{:,i});
                        e_datetime{i}=min(Tbl_datetime{:,i});
                        f_datetime{i}=max(Tbl_datetime{:,i});
                    end
                    m_datetime =  GetMissingData(app, Tbl_datetime);
                    t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                    t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:SS','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                    t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                    t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                    app.UIDatetimeTable.Data = t2;
                end
                
                % Text features widget
                % Descriptive statistics
                if app.NumberOfTextFeaturesEditField.Value ~= 0
                    a_text = {};
                    b_text = {};
                    for i = 1:size(Tbl_text,2)
                        a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                        b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                    end
                    m_text =  GetMissingData(app, Tbl_text);
                    t3 = table(varNames_text',a_text',b_text',m_text');
                    app.UITextTable.Data = t3;
                end
                
                % Imputation tab
                % Displays missing data percentage to be imputed
                app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
                % Missing observations percentage table
                app.UIMissingObservationsTable_2.Data = t;
                % Missingness plot
                A = flip(ismissing(Tbl_true));
                imagesc(app.UIAxes8,A);
                cmap = jet(2);
                colormap(app.UIAxes9,cmap);
                app.UIAxes8.XTick = 1:length(varNames_true);
                app.UIAxes8.XTickLabel = varNames_true;
                app.UIAxes8.YTick = [1,size(Tbl_true,1)];
                app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
                app.UIAxes8.YDir = 'normal';
                if app.EditField2.Value == 1
                    % Displays missing data percentage imputed
                    app.PercentageofMissingDataImputedEditField.Value = app.PercentageofMissingDataEditField.Value;
                else
                    % Displays missing data percentage imputed
                    app.PercentageofMissingDataImputedEditField.Value = 0;
                end
                
                % Data transformation tab
                app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
                app.SelectedListBox.Value = {};
                app.DataTransformationErrorEditField.Value = '';
                app.DataTransformationErrorEditField.Visible = 'off';
                
                % Changes background color to light blue
                app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            elseif l-app.EditField0.Value == 0
                app.ImportDataEditField.Value = '';
                
                % Current Data 
                app.UIMainTable.Data = {};
                app.UIMainTable.ColumnName = {};
                
                % Data properties widget
                app.ActualNoOfRowsEditField.Value = 0;
                app.ActualNoOfColumnsEditField.Value = 0;
                app.IdListBox.Items = {''};
                app.NumericalListBox.Items = {''};
                app.DatetimeListBox.Items = {''};
                app.TextListBox.Items = {''};
                % Displays the file size in megabytes
                app.FileSizeinMBEditField.Value = 0;
                % Displays the number of rows
                app.NumberOfRowsEditField.Value = 0;
                % Displays the number of columns
                app.NumberOfColumnsEditField.Value = 0;
                % Displays the number of id features
                app.NumberOfIdFeaturesEditField.Value = 0;
                % Displays the number of numerical features
                app.NumberOfNumericalFeaturesEditField.Value = 0;
                % Displays the number of datetime features
                app.NumberOfDateTimeFeaturesEditField.Value = 0;
                % Displays the number of text features
                app.NumberOfTextFeaturesEditField.Value = 0;
                % Displays the number of duplicate rows
                app.NumberOfDuplicateRowsEditField.Value = 0;
                % Displays the number of duplicate columns
                app.NumberOfDuplicateColumnsEditField.Value = 0;
                % Displays the number of deleted rows
                app.NumberOfDeletedRowsEditField.Value = 0;
                % Displays the number of deleted columns
                app.NumberOfDeletedColumnsEditField.Value = 0;
                % Missingness plot
                app.UIAxes6.cla;
                app.UIAxes6.XTick = {};
                app.UIAxes7.cla;
                % Displays the limits of two sliders
                app.DeleteRowsMinSlider.Limits = [0 100];
                app.DeleteRowsMaxSlider.Limits = [0 100];
                app.DeleteRowsMinSlider.Value = 0;
                app.DeleteRowsMaxSlider.Value = 100;
                app.EditField_8.Value = 0;
                app.EditField_9.Value = 100;
                % Displays missing data percentage
                app.MissingDataPercentageEditField.Value = 0;
                % Missing observations percentage table
                app.UIMissingObservationsTable.Data = {};
                % Missing observations percentage plot
                app.UIAxes5.cla;
                app.UIAxes5.XTick = {};
                
                % Numerical features widget
                % Descriptive statistics
                app.UINumericTable.Data = {};
                app.UIAxes.cla;
                app.UIAxes.XLabel.String = '';
                % Displays the number of bins
                app.NumberofBinsEditField.Value = 0;
                % Displays the limits of two sliders
                app.MinEditSliderNumeric.Limits = [0 100];
                app.MaxEditSliderNumeric.Limits = [0 100];
                app.MinEditSliderNumeric.Value = 0;
                app.MaxEditSliderNumeric.Value = 100;
                
                % Datetime features widget
                % Descriptive statistics
                app.UIDatetimeTable.Data = {};
                app.UIAxes4_3.cla;
                app.UIAxes4_3.XLabel.String = '';
                % Displays the limits of two sliders
                app.MinEditSliderDatetime.Limits = [0 100];
                app.MaxEditSliderDatetime.Limits = [0 100];
                app.MinEditSliderDatetime.Value = 0;
                app.MaxEditSliderDatetime.Value = 100;
                
                % Text features widget
                % Descriptive statistics
                app.UITextTable.Data = {};
                app.UICategoryTextTable.Data = {};
                app.UIBoxplotTextTable.Data = {};
                app.UIBoxplotTextTable.ColumnName = {};
                app.UIAxes3_3.cla;
                app.UIAxes3_3.XLabel.String = '';
                app.UIAxes3_4.cla;
                app.UIAxes3_4.XTick = {};
                app.UIAxes3_4.XLabel.String = '';
                app.UIAxes3_4.YLabel.String = '';
                app.UITableTextRowIndices.Data = {};
                app.UITableTextColumnIndices.Data = {};
                
                
                % Imputation widget
                app.PercentageofMissingDataEditField.Value = 0;
                % Missing observations percentage table
                app.UIMissingObservationsTable_2.Data = {};
                % Displays missing data percentage imputed
                app.PercentageofMissingDataImputedEditField.Value = 0;
                % Displays the number of trees
                app.NumberofTreesEditField.Value = 10;
                % Displays imputation plot
                app.UIAxes8.cla;
                app.UIAxes8.XTick = {};
                app.ImputationErrorEditField.Value = '';
                app.ImputationErrorEditField.Visible = 'off';
                
                % Data transformation widget
                app.SelectNumericalFeaturesListBox.Items = {''};
                app.SelectedListBox.Items = {''};
                app.UIAxes_2.cla;
                app.DataTransformationErrorEditField.Value = '';
                app.DataTransformationErrorEditField.Visible = 'off';
                % Displays the number of bins
                app.NumberofBinsEditField_2.Value = 0;
                
                app.ListBox.Items = {''};
                
                app.ListBox_2.Items = {''};
                app.DataPropertiesCheckBox.Value = 0;
                app.NumericalFeaturesCheckBox.Value = 0;
                app.DatetimeFeaturesCheckBox.Value = 0;
                app.TextFeaturesCheckBox.Value = 0;
                app.ImputationCheckBox.Value = 0;
                app.DataTransformationCheckBox.Value = 0;
                app.SaveDataCheckBox.Value = 0;
                
                % Changes background color to black
                app.UndoButton.BackgroundColor = [0 0 0];
            else
                app.UndoButton.BackgroundColor = [0 0 0];
            end
            % Last modified time
            app.LastModifiedTime24EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
        end

        % Button pushed function: DeleteRowsTextButton
        function DeleteRowsTextButtonPushed(app, event)
            % Changes background color to grey
            app.DeleteRowsTextButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            app.EditField2_4.Value = 1;
            % Text features
            for r = 1:size(app.UITableTextRowIndices.Data,1)
                for c = 1:size(app.UITableTextColumnIndices.Data,2)
                    Tbl_true = app.UIMainTable.Data;
                    varNames_true = Tbl_true.Properties.VariableNames;
                    Tbl = removevars(Tbl_true,app.IdListBox.Items);
                    varNames = Tbl.Properties.VariableNames;
                    array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                    index_notnumeric = find(array_numeric==0);
                    Tbl_numeric = removevars(Tbl,index_notnumeric);
                    varNames_numeric = Tbl_numeric.Properties.VariableNames;
                    rowIndex = app.UITableTextRowIndices.Data{r,c};
                    colIndex = app.UITableTextColumnIndices.Data{r,c};
                    if (isempty(rowIndex) == false) && (isempty(colIndex) == false)
                        indices0 = {};
                        observations = str2double(string(app.UIBoxplotTextTable.Data{rowIndex,colIndex}));
                        for i = 1:length(observations)
                            A = find(Tbl.(string(varNames_numeric(rowIndex))) == observations(i));
                            B = find(Tbl.(string(app.SelectedCellTextEditField.Value)) == string(app.UIBoxplotTextTable.ColumnName{colIndex}));
                            indices0{i} = intersect(A,B);
                        end
                        indices = unique(cell2mat(indices0'));
                        Tbl(indices,:) = [];
                        Tbl_true(indices,:) = [];
                        for i = 1:size(Tbl,2)
                            Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
                        end
                        app.UIMainTable.Data = Tbl_true;
                        app.UIMainTable.ColumnName = Tbl_true.Properties.VariableNames;
                        app.UIBoxplotTextTable.Data{rowIndex,colIndex} = [];
                    end
                end
            end
            app.UITableTextRowIndices.Data = {};
            app.UITableTextColumnIndices.Data = {};
            % Current data widget
            % Displays the original table with column names
            
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % 2 Data properties %
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            d = zeros(1,length(varNames));
            if isempty(app.UITableNumericRowsDeleted.Data) == true
                for i = 1:length(varNames_numeric)
                    d(find(varNames == string(varNames_numeric{i}))) = 0;
                end
            else
                for i = 1:length(varNames_numeric)
                    if isempty(app.UITableNumericRowsDeleted.Data{i,3}) == false
                        if isempty(app.UITableNumericRowsDeleted.Data{i,1}) == false
                            d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,1} + app.UITableNumericRowsDeleted.Data{i,2} + app.UITableNumericRowsDeleted.Data{i,3};
                        else
                            d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,3};
                        end
                    else
                        d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,1} + app.UITableNumericRowsDeleted.Data{i,2};
                        
                    end
                end
            end
            if isempty(app.UITableDatetimeRowsDeleted.Data) == true
                for i = 1:length(varNames_datetime)
                    d(find(varNames == string(varNames_datetime{i}))) = 0;
                end
            else
                for i = 1:length(varNames_datetime)
                    if isempty(app.UITableDatetimeRowsDeleted.Data{i,3}) == false
                        if isempty(app.UITableDatetimeRowsDeleted.Data{i,1}) == false
                            d(find(varNames == string(varNames_datetime{i}))) = app.UITableDatetimeRowsDeleted.Data{i,1} + app.UITableDatetimeRowsDeleted.Data{i,2} + app.UITableDatetimeRowsDeleted.Data{i,3};
                        else
                            d(find(varNames == string(varNames_datetime{i}))) = app.UITableDatetimeRowsDeleted.Data{i,3};
                        end
                    else
                        d(find(varNames == string(varNames_datetime{i}))) = app.UITableDatetimeRowsDeleted.Data{i,1} + app.UITableDatetimeRowsDeleted.Data{i,2};
                    end
                end
            end
            for i = 1:length(varNames_text)
                if isempty(app.SelectedCellTextEditField.Value) == false
                    d(find(varNames == string(app.SelectedCellTextEditField.Value))) = sum(sum(str2double(string(app.UITableTextRowsDeleted.Data(find(~cellfun(@isempty, app.UITableTextRowsDeleted.Data)))))));
                end
            end
            % Displays the number of deleted rows
            app.NumberOfDeletedRowsEditField.Value = app.ActualNoOfRowsEditField.Value - size(Tbl_true,1);
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime18EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.DeleteRowsTextButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: DeleteRowsDatetimeButton
        function DeleteRowsDatetimeButtonPushed(app, event)
            % Changes background color to cyan
            app.DeleteRowsDatetimeButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % 1 Update less than features %
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            Tbl_datetimenew = app.UIDatetimeTable.Data;
            app.UITable2_10.Data = Tbl_datetimenew(:,[1 6]);
            if length(find(string(Tbl_datetimenew{:,6})=='Select')) == length(varNames_datetime)
                app.UITable2_10.Data = {};
            else
                app.UITable2_10.Data(find(string(Tbl_datetimenew{:,6})=='Select'),:) = [];
            end
            x = {};
            featureLess = {};
            y0 = {};
            indices0 = {};
            length1 = {};
            for i = 1:length(varNames_datetime)
                x{i} = Tbl.(string(varNames_datetime{i}));
                if strcmp(string(Tbl_datetimenew{i,6}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                    length1{i} = 0;
                else
                    featureLess{i} = Tbl_datetime.(string(Tbl_datetimenew{i,6}));
                    y0{i} = x{i}(x{i}<featureLess{i});
                    indices0{i} = find(x{i}>=featureLess{i});
                    length1{i} = length(indices0{i});
                end
                app.UITableDatetimeRowsDeleted.Data{i,1} = length1{i};
            end
            indices = unique(cell2mat(indices0));
            app.NoOfRowsDatetimeEditField.Value = length(indices);
            Tbl(indices,:) = [];
            Tbl_true(indices, :) = [];
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % 2 Update greater than features %
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            Tbl_datetimenew = app.UIDatetimeTable.Data;
            app.UITable2_12.Data = Tbl_datetimenew(:,[1 7]);
            if length(find(string(Tbl_datetimenew{:,7})=='Select')) == length(varNames_datetime)
                app.UITable2_12.Data = {};
            else
                app.UITable2_12.Data(find(string(Tbl_datetimenew{:,7})=='Select'),:) = [];
            end
            x = {};
            featureGreater = {};
            y0 = {};
            indices0 = {};
            length2 = {};
            for i = 1:length(varNames_datetime)
                x{i} = Tbl.(string(varNames_datetime{i}));
                if strcmp(string(Tbl_datetimenew{i,7}),'Select') == 1
                    y0{i} = x{i};
                    indices0{i} = [];
                    length2{i} = 0;
                else
                    featureGreater{i} = Tbl_datetime.(string(Tbl_datetimenew{i,7}));
                    y0{i} = x{i}(x{i}>featureGreater{i});
                    indices0{i} = find(x{i}<=featureGreater{i});
                    length2{i} = length(indices0{i});
                end
                app.UITableDatetimeRowsDeleted.Data{i,2} = length2{i};
            end
            indices = unique(cell2mat(indices0));
            app.NoOfRowsDatetimeEditField_2.Value = length(indices);
            Tbl(indices,:) = [];
            Tbl_true(indices, :) = [];
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % 1 Update range %
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            x = {};
            lowerLimit = {};
            upperLimit = {};
            y = {};
            indices_0 = {};
            indices0 = {};
            for i = 1:length(varNames_datetime)
                x{i} = Tbl.(string(varNames_datetime{i}));
                lowerLimit{i} = string(app.UIDatetimeTable.Data{i,8});
                upperLimit{i} = string(app.UIDatetimeTable.Data{i,9});
                y{i} = x{i}((x{i} >= lowerLimit{i}) & (x{i} <= upperLimit{i}));
                indices_0{i} = find((x{i} < lowerLimit{i}) | (x{i} > upperLimit{i}));
                indices0{i} = indices_0{i}';
                app.UITableDatetimeRowsDeleted.Data{i,3} = length(indices0{i});
            end
            indices = unique(cell2mat(indices0));
            Tbl(indices,:) = [];
            Tbl_true(indices, :) = [];
            for i = 1:size(Tbl,2)
                Tbl_true{:,find(varNames_true == string(varNames(i)))} = Tbl{:,i};
            end
            app.UIMainTable.Data = Tbl_true;
            
            % Current data tab
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            varNames = Tbl.Properties.VariableNames;
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties tab
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            %
            d = zeros(1,length(varNames));
            if isempty(app.UITableNumericRowsDeleted.Data) == true
                for i = 1:length(varNames_numeric)
                    d(find(varNames == string(varNames_numeric{i}))) = 0;
                end
            else
                for i = 1:length(varNames_numeric)
                    if isempty(app.UITableNumericRowsDeleted.Data{i,3}) == false
                        if isempty(app.UITableNumericRowsDeleted.Data{i,1}) == false
                            d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,1} + app.UITableNumericRowsDeleted.Data{i,2} + app.UITableNumericRowsDeleted.Data{i,3};
                        else
                            d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,3};
                        end
                    else
                        d(find(varNames == string(varNames_numeric{i}))) = app.UITableNumericRowsDeleted.Data{i,1} + app.UITableNumericRowsDeleted.Data{i,2};
                    end
                end
            end
            
            for i = 1:length(varNames_datetime)
                if isempty(app.UITableDatetimeRowsDeleted.Data{i,3}) == false
                    if isempty(app.UITableDatetimeRowsDeleted.Data{i,1}) == false
                        d(find(varNames == string(varNames_datetime{i}))) = app.UITableDatetimeRowsDeleted.Data{i,1} + app.UITableDatetimeRowsDeleted.Data{i,2} + app.UITableDatetimeRowsDeleted.Data{i,3};
                    else
                        d(find(varNames == string(varNames_datetime{i}))) = app.UITableDatetimeRowsDeleted.Data{i,3};
                    end
                else
                    d(find(varNames == string(varNames_datetime{i}))) = app.UITableDatetimeRowsDeleted.Data{i,1} + app.UITableDatetimeRowsDeleted.Data{i,2};
                end
            end
            % Displays the number of deleted rows
            app.NumberOfDeletedRowsEditField.Value = app.ActualNoOfRowsEditField.Value - size(Tbl_true,1);
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features tab
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features tab
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Plots updated histogram of the selected cell
            T = app.SelectedCellDatetimeEditField.Value;
            histogram(app.UIAxes4_3,Tbl_datetime.(T))
            app.UIAxes4_3.XLabel.Interpreter = 'latex';
            app.UIAxes4_3.XLabel.String = T;
            
            app.MinEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
            app.MaxEditSliderDatetime.Limits = [datenum(min(Tbl_datetime.(T))) datenum(max(Tbl_datetime.(T)))];
            app.MinEditSliderDatetime.Value = app.MinEditSliderDatetime.Limits(1);
            app.MaxEditSliderDatetime.Value = app.MaxEditSliderDatetime.Limits(2);
            
            % Last modified time
            app.LastModifiedTime13EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.DeleteRowsDatetimeButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: HelpButton
        function HelpButtonPushed(app, event)
            % Changes background color to grey
            app.HelpButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Open
            fileName = 'explorer https://github.com/devosmitachatterjee2018/DataCleaningTool/blob/main/UserManual.pdf';
            dos(fileName);
            
            % Changes background color to black
            app.HelpButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: ResizeButton
        function ResizeButtonPushed(app, event)
            % Changes background color to grey
            app.ResizeButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            screenSize = get(groot,'ScreenSize');
            screenWidth = screenSize(3);
            screenHeight = screenSize(4);
            left = screenWidth*0.1;
            bottom = screenHeight*0.1;
            width = screenWidth*0.67;
            height = screenHeight*0.715;
            drawnow;
            app.UIFigureDataCleaningTool.Position = [left bottom width height];
            app.UIFigureDataCleaningTool.AutoResizeChildren = 'on';
            
            % Last modified time
            app.LastModifiedTime23EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.ResizeButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: ConverttoExcelDATEVALUEButton
        function ConverttoExcelDATEVALUEButtonPushed(app, event)
            % Changes background color to grey
            app.ConverttoExcelDATEVALUEButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Change datetime format
            Tbl = app.UIMainTable.Data;
            
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            
            DateNum = {};
            A = zeros(size(Tbl_datetime));
            for i = 1:length(varNames_datetime)
                DateNum{i} = datenum(string(Tbl.(string(varNames_datetime(i)))));
                A(:,i) = m2xdate(DateNum{i});
            end
            
            Tbl = app.UIMainTable.Data;
            Tbl_new = removevars(Tbl,varNames_datetime);
            Tbl1 = [Tbl_new array2table(A,'VariableNames',varNames_datetime)];
            app.UIMainTable.Data = Tbl1;
            app.UIMainTable.ColumnName = [Tbl_new.Properties.VariableNames varNames_datetime];
            
            % Current data widget
            % Displays the original table with column names
            
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv','Delimiter',',')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            %delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Imputation widget
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            
            % Last modified time
            app.LastModifiedTime10EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.ConverttoExcelDATEVALUEButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: 
        % ImportDatawithFeaturesinColumnsButton
        function ImportDatawithFeaturesinColumnsButtonPushed(app, event)
            % Changes background color to grey
            app.ImportDatawithFeaturesinColumnsButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Import data with features in columns
            % Opens a dialog box
            % Selects .csv, .xlsx, .txt, .dat files
            [filename,filepath,~] = uigetfile({'*.csv';'*.xlsx';'*.txt';'*.dat'});
            % Extracts file path name
            fullname = [filepath filename];
            if isequal(filepath,0) && isequal(filename,0)
                % Changes background color to black
                app.ImportDatawithFeaturesinColumnsButton.BackgroundColor = [0,0,0];
            else
                % Displays file path name
                app.ImportDataEditField.Value = fullname;
                [~,NAME,~] = fileparts(filename);
                % Extracts the name of the file only
                app.EditField_7.Value = NAME;
                % Reads the file with header as a table with column names
                opts = detectImportOptions(fullname,'NumHeaderLines',0);
                format long
                Tbl = readtable(fullname,opts);
                
                % Current data widget
                % Displays the original table with column names
                app.UIMainTable.Data = Tbl;
                app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
                % Undo
                Tbl_true = Tbl;
                varNames_true = Tbl_true.Properties.VariableNames;
                l = numel(app.ListBox0.Items);
                mkdir('saveddata')
                if l==0
                    fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
                else
                    fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
                end
                app.ListBox0.Items(l+1) = cellstr(fname0);
                save(fname0, 'Tbl_true')
                app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
                % Update
                if l==0
                    fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
                else
                    fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
                end
                app.ListBox1.Items(l+1) = cellstr(fname1);
                save(fname1, 'Tbl')
                % Extract numerical features
                array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                index_notnumeric = find(array_numeric==0);
                Tbl_numeric = removevars(Tbl,index_notnumeric);
                varNames_numeric = Tbl_numeric.Properties.VariableNames;
                app.NumericalListBox.Items = string(varNames_numeric);
                % Extract date/time features
                array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
                index_notdatetime = find(array_datetime==0);
                Tbl_datetime = removevars(Tbl,index_notdatetime);
                varNames_datetime = Tbl_datetime.Properties.VariableNames;
                app.DatetimeListBox.Items = string(varNames_datetime);
                % Extract text features
                array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
                array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
                index_numeric = find(array_numeric==1);
                index_datetime = find(array_datetime==1);
                index_nottext = [index_numeric index_datetime];
                Tbl_text = removevars(Tbl,index_nottext);
                varNames_text = Tbl_text.Properties.VariableNames;
                app.TextListBox.Items = string(varNames_text);
                % Displays the actual number of rows in the original dataset(invisible)
                % Computed only once while importing data
                app.ActualNoOfRowsEditField.Value = size(Tbl,1);
                app.ActualNoOfColumnsEditField.Value = size(Tbl,2);
                
                % Data properties widget
                % Displays the file size in megabytes
                props = dir(fullname);
                app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
                % Displays the number of rows
                app.NumberOfRowsEditField.Value = size(Tbl,1);
                % Displays the number of columns
                app.NumberOfColumnsEditField.Value = size(Tbl,2);
                % Displays the number of numerical features
                app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
                % Displays the number of datetime features
                app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
                % Displays the number of text features
                app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
                % Displays the number of duplicate rows
                app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl);
                % Displays the number of duplicate columns
                app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
                % Missingness plot
                A = flip(ismissing(Tbl_true));
                imagesc(app.UIAxes6,A);
                cmap = winter(2);
                colormap(app.UIAxes6,cmap);
                app.UIAxes6.XTick = 1:length(varNames_true);
                app.UIAxes6.XTickLabel = varNames_true;
                app.UIAxes6.YTick = [1 size(Tbl_true,1)];
                app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)),'1'};
                app.UIAxes6.YDir = 'normal';
                colormap(app.UIAxes7,cmap);
                cb = colorbar(app.UIAxes7,'south','FontSize',8,'Limits',[0 1],'Ticks',[0 1],'TickLabels',{'Observed','Missing'});
                set(cb,'position',[0.45 0.4 .09 .3])
                % Displays the limits of two sliders
                app.DeleteRowsMinSlider.Limits = [1 size(Tbl,1)];
                app.DeleteRowsMaxSlider.Limits = [1 size(Tbl,1)];
                app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
                app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
                app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
                app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
                % Displays missing data percentage
                app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
                % Missing observations percentage table
                Tbl = app.UIMainTable.Data;
                varNames = Tbl.Properties.VariableNames;
                m =  GetMissingData(app, Tbl);
                t = table(varNames',m');
                app.UIMissingObservationsTable.Data = t;
                % Missing observations percentage plot
                bar(app.UIAxes5,0:length(varNames)-1,m);
                app.UIAxes5.XTick = 0:length(varNames)-1;
                app.UIAxes5.XTickLabel = varNames;
                app.UIAxes5.YLim = [0 100];
                
                % Numerical features widget
                % Descriptive statistics
                if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                    a_numeric = zeros(1,size(Tbl_numeric,2));
                    c_numeric = zeros(1,size(Tbl_numeric,2));
                    d_numeric = zeros(1,size(Tbl_numeric,2));
                    l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                    g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                    e_numeric = zeros(1,size(Tbl_numeric,2));
                    f_numeric = zeros(1,size(Tbl_numeric,2));
                    for i = 1:size(Tbl_numeric,2)
                        a_numeric(i)=min(Tbl_numeric{:,i});
                        c_numeric(i)=max(Tbl_numeric{:,i});
                        d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                        e_numeric(i)=min(Tbl_numeric{:,i});
                        f_numeric(i)=max(Tbl_numeric{:,i});
                    end
                    x = Tbl_numeric;
                    m_numeric =  GetMissingData(app, x);
                    t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                    t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                    t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                    app.UINumericTable.Data = t1;
                else
                    app.UINumericTable.Data = {};
                end
                
                % Datetime features widget
                % Descriptive statistics
                if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                    a_datetime = cell([1 size(Tbl_datetime,2)]);
                    c_datetime = cell([1 size(Tbl_datetime,2)]);
                    DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                    l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                    g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                    e_datetime = cell([1 size(Tbl_datetime,2)]);
                    f_datetime = cell([1 size(Tbl_datetime,2)]);
                    for i = 1:size(Tbl_datetime,2)
                        a_datetime{i}=min(Tbl_datetime{:,i});
                        c_datetime{i}=max(Tbl_datetime{:,i});
                        e_datetime{i}=min(Tbl_datetime{:,i});
                        f_datetime{i}=max(Tbl_datetime{:,i});
                    end
                    m_datetime =  GetMissingData(app, Tbl_datetime);
                    t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                    t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                    t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                    t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                    app.UIDatetimeTable.Data = t2;
                else
                    app.UIDatetimeTable.Data = {};
                end
                
                % Text features widget
                % Descriptive statistics
                if app.NumberOfTextFeaturesEditField.Value ~= 0
                    a_text = {};
                    b_text = {};
                    for i = 1:size(Tbl_text,2)
                        a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                        b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                    end
                    m_text =  GetMissingData(app, Tbl_text);
                    t3 = table(varNames_text',a_text',b_text',m_text');
                    app.UITextTable.Data = t3;
                else
                    app.UITextTable.Data = {};
                end
                
                % Imputation widget
                % Displays missing data percentage to be imputed
                app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
                % Missing observations percentage table
                app.UIMissingObservationsTable_2.Data = t;
                % Missingness plot
                A = flip(ismissing(Tbl_true));
                imagesc(app.UIAxes8,A);
                cmap = winter(2);
                colormap(app.UIAxes8,cmap);
                app.UIAxes8.XTick = 1:length(varNames_true);
                app.UIAxes8.XTickLabel = varNames_true;
                app.UIAxes8.YTick = [1 size(Tbl_true,1)];
                app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
                app.UIAxes8.YDir = 'normal';
                colormap(app.UIAxes9,cmap);
                
                % Data transformation widget
                app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
                
                % Last modified time
                app.LastModifiedTime0EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
                
                % Changes background color to black
                app.ImportDatawithFeaturesinColumnsButton.BackgroundColor = [0,0,0];
            end
        end

        % Button pushed function: FeatureNamesButton
        function FeatureNamesButtonPushed(app, event)
            % Changes background color to grey
            app.FeatureNamesButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            app.EditField4.Value = 1;
            % Present table
            Tbl = app.UIMainTable.Data;
            varNames = Tbl.Properties.VariableNames;
            % Change case of all feature names
            if app.DropDown_5.Value == "lower case"
                Tbl.Properties.VariableNames = lower(string(varNames));
                app.IdListBox.Items = lower(string(app.IdListBox.Items));
            elseif app.DropDown_5.Value == "UPPER CASE"
                Tbl.Properties.VariableNames = upper(string(varNames));
                app.IdListBox.Items = upper(string(app.IdListBox.Items));
            else
                Tbl.Properties.VariableNames = regexprep(string(varNames),'(\<[a-z])','${upper($1)}');
                app.IdListBox.Items = regexprep(string(app.IdListBox.Items),'(\<[a-z])','${upper($1)}');
            end
            app.FeatureNamesEditField.Value = app.DropDown_5.Value;
            app.DropDown_5.Value = 'Select';
            
            % Current data tab
            % Displays the original table with column names
            app.UIMainTable.Data = Tbl;
            app.UIMainTable.ColumnName = Tbl.Properties.VariableNames;
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            % Color change shows that the previous activity can be undone
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            end
            
            % Last modified time
            app.LastModifiedTime2EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.FeatureNamesButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: LabelEncodingButton
        function LabelEncodingButtonPushed(app, event)
            % Changes background color to grey
            app.LabelEncodingButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
           
            if isempty(app.UITextTable.Data) == false
                % Present table
                Tbl = app.UIMainTable.Data;
                Tbl_new = removevars(Tbl,string(app.SelectedCellTextEditField.Value));
                Tbl1 = [Tbl_new GetTable3(app, Tbl.(string(app.SelectedCellTextEditField.Value)), string(app.SelectedCellTextEditField.Value))];
                app.UIMainTable.Data = Tbl1;
                app.UIMainTable.ColumnName = Tbl1.Properties.VariableNames;
                app.UITextTable.Data = {};
                app.UICategoryTextTable.Data = {};
                app.UIBoxplotTextTable.Data = {};
                app.UIAxes3_3.cla;
                app.UIAxes3_4.cla;
            end
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            app.UIAxes7.cla;
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime14EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.LabelEncodingButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: OneHotEncodingButton
        function OneHotEncodingButtonPushed(app, event)
            % Changes background color to grey
            app.OneHotEncodingButton.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            if isempty(app.UITextTable.Data) == false
                if isempty(app.categoryEditField.Value) == false
                   if app.categoryEditField.Value == "Transform n categories to n dummy variables for all text features"
                        % Present table
                        Tbl = app.UIMainTable.Data;
                        Tbl_new = removevars(Tbl,string(app.SelectedCellTextEditField.Value));
                        Tbl1 = [Tbl_new GetTable(app, Tbl.(string(app.SelectedCellTextEditField.Value)))];
                        app.UIMainTable.Data = Tbl1;
                        app.UIMainTable.ColumnName = Tbl1.Properties.VariableNames;
                        app.DropDown_4.Value = 'Select';
                        app.UITextTable.Data = {};
                        app.UICategoryTextTable.Data = {};
                        app.UIBoxplotTextTable.Data = {};
                        app.UIAxes3_3.cla;
                        app.UIAxes3_4.cla;
                    else
                        Tbl = app.UIMainTable.Data;
                        Tbl_new = removevars(Tbl,string(app.SelectedCellTextEditField.Value));
                        Tbl1 = [Tbl_new GetTable2(app, Tbl.(string(app.SelectedCellTextEditField.Value)))];
                        app.UIMainTable.Data = Tbl1;
                        app.UIMainTable.ColumnName = Tbl1.Properties.VariableNames;
                        app.DropDown_4.Value = 'Select';
                        app.UITextTable.Data = {};
                        app.UICategoryTextTable.Data = {};
                        app.UIBoxplotTextTable.Data = {};
                        app.UIAxes3_3.cla;
                        app.UIAxes3_4.cla;
                    end
                end
            end
            
            % Current data widget
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % Data properties widget
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            app.UIAxes7.cla;
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime15EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to black
            app.OneHotEncodingButton.BackgroundColor = [0,0,0];
        end

        % Button pushed function: DeleteFeatureButton_2
        function DeleteFeatureButton_2Pushed2(app, event)
            % Changes background color to grey
            app.DeleteFeatureButton_2.BackgroundColor = [0.65,0.65,0.65];
            pause(0.000001);
            
            % Delete features
            if app.EditFieldWhatsLeft2.Value ~= 0
                i = app.EditFieldWhatsLeft2.Value;
                if isempty(app.UITable2_14.Data) == true
                    app.UITable2_14.Data{1,1} = char(app.UIMissingObservationsTable_2.Data{i,1});
                else
                    l = size(app.UITable2_14.Data,1);
                    app.UITable2_14.Data{l+1,1} = char(app.UIMissingObservationsTable_2.Data{i,1});
                end
                index = find(string(app.UIMainTable.ColumnName) == string(app.UIMissingObservationsTable_2.Data{i,1}));
                app.IdListBox.Items(find(app.IdListBox.Items == string(app.UIMissingObservationsTable_2.Data{i,1}))) = [];
                app.UIMissingObservationsTable_2.Data(i,:) = [];
                app.UIMissingObservationsTable.Data(i,:) = [];
                app.UIMainTable.Data(:,index) = [];
                app.UIMainTable.ColumnName(index) = [];
            end
            
            % 1 Current table %
            % Displays the original table with column names
            % Undo
            Tbl_true = app.UIMainTable.Data;
            varNames_true = Tbl_true.Properties.VariableNames;
            l = numel(app.ListBox0.Items);
            if l==0
                fname0 = sprintf('saveddata/%s_undo.mat', app.EditField_7.Value);
            else
                fname0 = sprintf('saveddata/%s_undo(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox0.Items(l+1) = cellstr(fname0);
            save(fname0, 'Tbl_true')
            app.UndoButton.BackgroundColor = [0.22 0.44 0.55];
            % Update
            Tbl = removevars(Tbl_true,app.IdListBox.Items);
            if l==0
                fname1 = sprintf('saveddata/%s_updated.mat', app.EditField_7.Value);
            else
                fname1 = sprintf('saveddata/%s_updated(%d).mat', app.EditField_7.Value, l);
            end
            app.ListBox1.Items(l+1) = cellstr(fname1);
            save(fname1, 'Tbl')
            % Extract numerical features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            index_notnumeric = find(array_numeric==0);
            Tbl_numeric = removevars(Tbl,index_notnumeric);
            varNames_numeric = Tbl_numeric.Properties.VariableNames;
            app.NumericalListBox.Items = string(varNames_numeric);
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            % Extract date/time features
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_notdatetime = find(array_datetime==0);
            Tbl_datetime = removevars(Tbl,index_notdatetime);
            varNames_datetime = Tbl_datetime.Properties.VariableNames;
            app.DatetimeListBox.Items = string(varNames_datetime);
            % Extract text features
            array_numeric = varfun(@isnumeric,Tbl,'output','uniform');
            array_datetime = varfun(@isdatetime,Tbl,'output','uniform');
            index_numeric = find(array_numeric==1);
            index_datetime = find(array_datetime==1);
            index_nottext = [index_numeric index_datetime];
            Tbl_text = removevars(Tbl,index_nottext);
            varNames_text = Tbl_text.Properties.VariableNames;
            app.TextListBox.Items = string(varNames_text);
            
            % 2 Data properties %
            writetable(Tbl_true,'filesize.csv')
            props = dir('filesize.csv');
            % Displays the file size in megabytes
            app.FileSizeinMBEditField.Value = round(props.bytes/(1024^2),3);
            delete('filesize.csv');
            % Displays the number of rows
            app.NumberOfRowsEditField.Value = size(Tbl_true,1);
            % Displays the number of columns
            app.NumberOfColumnsEditField.Value = size(Tbl_true,2);
            % Displays the number of id features
            if isempty(app.IdListBox.Items) == false
                app.NumberOfIdFeaturesEditField.Value = numel(app.IdListBox.Items);
            else
                app.NumberOfIdFeaturesEditField.Value = 0;
            end
            % Displays the number of numerical features
            app.NumberOfNumericalFeaturesEditField.Value = size(Tbl_numeric,2);
            % Displays the number of datetime features
            app.NumberOfDateTimeFeaturesEditField.Value = size(Tbl_datetime,2);
            % Displays the number of text features
            app.NumberOfTextFeaturesEditField.Value = size(Tbl_text,2);
            % Displays the number of duplicate rows
            app.NumberOfDuplicateRowsEditField.Value = HasRepeatedRows(app, Tbl_true);
            % Displays the number of duplicate columns
            app.NumberOfDuplicateColumnsEditField.Value = HasRepeatedColumns(app, Tbl_numeric);
            % Displays the number of deleted columns
            app.NumberOfDeletedColumnsEditField.Value = app.ActualNoOfColumnsEditField.Value - size(Tbl_true,2);
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes6,A);
            cmap = winter(2);
            colormap(app.UIAxes7,cmap);
            app.UIAxes6.XTick = 1:length(varNames_true);
            app.UIAxes6.XTickLabel = varNames_true;
            app.UIAxes6.YTick = [1 size(Tbl_true,1)];
            app.UIAxes6.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes6.YDir = 'normal';
            % Displays the limits of two sliders
            app.DeleteRowsMinSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMaxSlider.Limits = [1 size(Tbl_true,1)];
            app.DeleteRowsMinSlider.Value = app.DeleteRowsMinSlider.Limits(1);
            app.DeleteRowsMaxSlider.Value = app.DeleteRowsMaxSlider.Limits(2);
            app.EditField_8.Value = app.DeleteRowsMinSlider.Value;
            app.EditField_9.Value = app.DeleteRowsMaxSlider.Value;
            % Displays missing data percentage
            app.MissingDataPercentageEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing obervations percentage table
            m =  GetMissingData(app, Tbl_true);
            t = table(varNames_true',m');
            app.UIMissingObservationsTable.Data = t;
            % Missing observations percentage plot
            bar(app.UIAxes5,0:length(varNames_true)-1,m);
            app.UIAxes5.XTick = 0:length(varNames_true)-1;
            app.UIAxes5.XTickLabel = varNames_true;
            app.UIAxes5.YLim = [0 100];
            
            % Numerical features widget
            % Descriptive statistics
            if app.NumberOfNumericalFeaturesEditField.Value ~= 0
                a_numeric = zeros(1,size(Tbl_numeric,2));
                c_numeric = zeros(1,size(Tbl_numeric,2));
                d_numeric = zeros(1,size(Tbl_numeric,2));
                l_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                g_numeric = repmat({'Select'},size(Tbl_numeric,2),1);
                e_numeric = zeros(1,size(Tbl_numeric,2));
                f_numeric = zeros(1,size(Tbl_numeric,2));
                for i = 1:size(Tbl_numeric,2)
                    a_numeric(i)=min(Tbl_numeric{:,i});
                    c_numeric(i)=max(Tbl_numeric{:,i});
                    d_numeric(i) = GetDuplicateValues(app, Tbl_numeric{:,i});
                    e_numeric(i)=min(Tbl_numeric{:,i});
                    f_numeric(i)=max(Tbl_numeric{:,i});
                end
                x = Tbl_numeric;
                m_numeric =  GetMissingData(app, x);
                t1 = table(varNames_numeric',a_numeric',c_numeric',d_numeric',m_numeric',l_numeric ,g_numeric ,e_numeric' ,f_numeric');
                t1.l_numeric = categorical(t1.l_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                t1.g_numeric = categorical(t1.g_numeric,[{'Select'},varNames_numeric],'Ordinal',true);
                app.UINumericTable.Data = t1;
            else
                app.UINumericTable.Data = {};
            end
            
            % Datetime features widget
            % Descriptive statistics
            if app.NumberOfDateTimeFeaturesEditField.Value ~= 0
                a_datetime = cell([1 size(Tbl_datetime,2)]);
                c_datetime = cell([1 size(Tbl_datetime,2)]);
                DatesAndTimes = repmat({'Select'},size(Tbl_datetime,2),1);
                l_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                g_datetime = repmat({'Select'},size(Tbl_datetime,2),1);
                e_datetime = cell([1 size(Tbl_datetime,2)]);
                f_datetime = cell([1 size(Tbl_datetime,2)]);
                for i = 1:size(Tbl_datetime,2)
                    a_datetime{i}=min(Tbl_datetime{:,i});
                    c_datetime{i}=max(Tbl_datetime{:,i});
                    e_datetime{i}=min(Tbl_datetime{:,i});
                    f_datetime{i}=max(Tbl_datetime{:,i});
                end
                m_datetime =  GetMissingData(app, Tbl_datetime);
                t2 = table(varNames_datetime',a_datetime',c_datetime',m_datetime',DatesAndTimes,l_datetime,g_datetime,e_datetime',f_datetime');
                t2.DatesAndTimes = categorical(t2.DatesAndTimes,{'Select','yyyy-MM-dd','yyyy-MM-dd HH:mm:ss','yyyy-MM-dd HH:mm:ss.SSS','MMMM d, yyyy','dd:HH:mm:ss','HH:mm:ss.SSS','HH:mm:ss','HH:mm','mm:ss','HH','mm','ss','SSS'},'Ordinal',true);
                t2.l_datetime = categorical(t2.l_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                t2.g_datetime = categorical(t2.g_datetime,[{'Select'},varNames_datetime],'Ordinal',true);
                app.UIDatetimeTable.Data = t2;
            else
                app.UIDatetimeTable.Data = {};
            end
            
            % Text features widget
            % Descriptive statistics
            if app.NumberOfTextFeaturesEditField.Value ~= 0
                a_text = {};
                b_text = {};
                for i = 1:size(Tbl_text,2)
                    a_text{i}=strjoin(categories(categorical(Tbl_text{:,i})), ', ');
                    b_text{i}=strjoin(cellstr(num2str(countcats(categorical(Tbl_text{:,i})))),',');
                end
                m_text =  GetMissingData(app, Tbl_text);
                t3 = table(varNames_text',a_text',b_text',m_text');
                app.UITextTable.Data = t3;
            else
                app.UITextTable.Data = {};
            end
            
            % Imputation widget
            % Displays missing data percentage to be imputed
            app.PercentageofMissingDataEditField.Value = round((length(find(ismissing(Tbl_true)==1))/numel(Tbl_true))*100,2);
            % Missing observations percentage table
            app.UIMissingObservationsTable_2.Data = t;
            % Missingness plot
            A = flip(ismissing(Tbl_true));
            imagesc(app.UIAxes8,A);
            cmap = winter(2);
            colormap(app.UIAxes9,cmap);
            app.UIAxes8.XTick = 1:length(varNames_true);
            app.UIAxes8.XTickLabel = varNames_true;
            app.UIAxes8.YTick = [1 size(Tbl_true,1)];
            app.UIAxes8.YTickLabel = {string(size(Tbl_true,1)), '1'};
            app.UIAxes8.YDir = 'normal';
            
            % Data transformation widget
            app.SelectNumericalFeaturesListBox.Items = string(varNames_numeric);
            
            % Last modified time
            app.LastModifiedTime19EditField.Value = datestr(now, 'yyyy-mm-dd HH:MM:SS.FFF');
            
            % Changes background color to cyan
            app.DeleteFeatureButton_2.BackgroundColor = [0,0,0];
        end

        % Cell selection callback: UIMissingObservationsTable_2
        function UIMissingObservationsTable_2CellSelection(app, event)
            indices = event.Indices;
            app.EditFieldWhatsLeft2.Value = indices(1);
        end

        % Value changed function: EditField_8
        function EditField_8ValueChanged(app, event)
            value = app.EditField_8.Value;
            app.DeleteRowsMinSlider.Value = value;
        end

        % Value changed function: EditField_9
        function EditField_9ValueChanged(app, event)
            value = app.EditField_9.Value;
            app.DeleteRowsMaxSlider.Value = value;
        end

        % Cell edit callback: UINumericTable
        function UINumericTableCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            if indices(2) == 8
                app.MinEditSliderNumeric.Value = app.UINumericTable.Data{indices(1),8};
            end
            if indices(2) == 9
                app.MaxEditSliderNumeric.Value = app.UINumericTable.Data{indices(1),9};
            end
        end

        % Cell edit callback: UIDatetimeTable
        function UIDatetimeTableCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            if indices(2) == 8
                app.MinEditSliderDatetime.Value = app.UIDatetimeTable.Data{indices(1),8};
            end
            if indices(2) == 9
                app.MaxEditSliderDatetime.Value = app.UIDatetimeTable.Data{indices(1),9};
            end
        end

        % Close request function: UIFigureDataCleaningTool
        function UIFigureDataCleaningToolCloseRequest(app, event)
            if exist('saveddata', 'dir')
                    rmdir('saveddata', 's')
            end
            delete(app)
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigureDataCleaningTool
            app.UIFigureDataCleaningTool = uifigure;
            app.UIFigureDataCleaningTool.Color = [0.9412 0.9412 0.9412];
            app.UIFigureDataCleaningTool.Position = [100 100 1288 772];
            app.UIFigureDataCleaningTool.Name = 'DataCleaningTool';
            app.UIFigureDataCleaningTool.CloseRequestFcn = createCallbackFcn(app, @UIFigureDataCleaningToolCloseRequest, true);
            app.UIFigureDataCleaningTool.Scrollable = 'on';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.UIFigureDataCleaningTool);
            app.TabGroup2.Visible = 'off';
            app.TabGroup2.Position = [445 686 832 61];

            % Create SizeTab
            app.SizeTab = uitab(app.TabGroup2);
            app.SizeTab.Title = 'Size';

            % Create SortFeaturesButton_3
            app.SortFeaturesButton_3 = uibutton(app.SizeTab, 'push');
            app.SortFeaturesButton_3.BackgroundColor = [1 1 0];
            app.SortFeaturesButton_3.FontWeight = 'bold';
            app.SortFeaturesButton_3.Position = [417 -2 154 23];
            app.SortFeaturesButton_3.Text = 'Sort Features ';

            % Create FeaturesCountTab
            app.FeaturesCountTab = uitab(app.TabGroup2);
            app.FeaturesCountTab.Title = 'Features Count';
            app.FeaturesCountTab.BackgroundColor = [0.9608 0.9608 0.9608];

            % Create DuplicateDataTab
            app.DuplicateDataTab = uitab(app.TabGroup2);
            app.DuplicateDataTab.Title = 'Duplicate Data';
            app.DuplicateDataTab.BackgroundColor = [1 1 1];

            % Create DeletedDataTab
            app.DeletedDataTab = uitab(app.TabGroup2);
            app.DeletedDataTab.Title = 'Deleted Data';

            % Create UIAxes3_5
            app.UIAxes3_5 = uiaxes(app.DeletedDataTab);
            title(app.UIAxes3_5, 'Title')
            xlabel(app.UIAxes3_5, 'X')
            ylabel(app.UIAxes3_5, 'Y')
            app.UIAxes3_5.Visible = 'off';
            app.UIAxes3_5.Position = [295 5 21 10];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigureDataCleaningTool);
            app.TabGroup.Position = [9 7 1268 731];

            % Create CurrentDataTab
            app.CurrentDataTab = uitab(app.TabGroup);
            app.CurrentDataTab.Title = 'Current Data';

            % Create UIMainTable
            app.UIMainTable = uitable(app.CurrentDataTab);
            app.UIMainTable.ColumnName = {''};
            app.UIMainTable.RowName = {};
            app.UIMainTable.ColumnEditable = false;
            app.UIMainTable.Position = [0 1 1267 705];

            % Create EditField_7
            app.EditField_7 = uieditfield(app.CurrentDataTab, 'text');
            app.EditField_7.Visible = 'off';
            app.EditField_7.Position = [312 636 100 22];

            % Create LastModifiedTime3EditField
            app.LastModifiedTime3EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime3EditField.Visible = 'off';
            app.LastModifiedTime3EditField.Position = [533 593 100 22];

            % Create LastModifiedTime4EditField
            app.LastModifiedTime4EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime4EditField.Visible = 'off';
            app.LastModifiedTime4EditField.Position = [553 573 100 22];

            % Create LastModifiedTime5EditField
            app.LastModifiedTime5EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime5EditField.Visible = 'off';
            app.LastModifiedTime5EditField.Position = [586 543 100 22];

            % Create LastModifiedTime6EditField
            app.LastModifiedTime6EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime6EditField.Visible = 'off';
            app.LastModifiedTime6EditField.Position = [545 604 100 22];

            % Create LastModifiedTime7EditField
            app.LastModifiedTime7EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime7EditField.Visible = 'off';
            app.LastModifiedTime7EditField.Position = [563 636 100 22];

            % Create LastModifiedTime1EditField
            app.LastModifiedTime1EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime1EditField.Visible = 'off';
            app.LastModifiedTime1EditField.Position = [454 572 100 22];

            % Create ActualNoOfColumnsEditField
            app.ActualNoOfColumnsEditField = uieditfield(app.CurrentDataTab, 'numeric');
            app.ActualNoOfColumnsEditField.Visible = 'off';
            app.ActualNoOfColumnsEditField.Position = [828 661 204 22];

            % Create ListBox0
            app.ListBox0 = uilistbox(app.CurrentDataTab);
            app.ListBox0.Items = {};
            app.ListBox0.Visible = 'off';
            app.ListBox0.Position = [53 441 847 185];
            app.ListBox0.Value = {};

            % Create ListBox1
            app.ListBox1 = uilistbox(app.CurrentDataTab);
            app.ListBox1.Items = {};
            app.ListBox1.Visible = 'off';
            app.ListBox1.Position = [53 128 847 213];
            app.ListBox1.Value = {};

            % Create EditField0
            app.EditField0 = uieditfield(app.CurrentDataTab, 'numeric');
            app.EditField0.Visible = 'off';
            app.EditField0.Position = [1116 530 100 22];

            % Create LastModifiedTime0EditField
            app.LastModifiedTime0EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime0EditField.Visible = 'off';
            app.LastModifiedTime0EditField.Position = [270 551 100 22];

            % Create EditField2_5Label
            app.EditField2_5Label = uilabel(app.CurrentDataTab);
            app.EditField2_5Label.HorizontalAlignment = 'right';
            app.EditField2_5Label.Visible = 'off';
            app.EditField2_5Label.Position = [193 342 62 22];
            app.EditField2_5Label.Text = 'Edit Field2';

            % Create LastModifiedTime19EditField
            app.LastModifiedTime19EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime19EditField.Visible = 'off';
            app.LastModifiedTime19EditField.Position = [464 369 100 22];

            % Create LastModifiedTime20EditField
            app.LastModifiedTime20EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime20EditField.Visible = 'off';
            app.LastModifiedTime20EditField.Position = [484 349 100 22];

            % Create LastModifiedTime21EditField
            app.LastModifiedTime21EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime21EditField.Visible = 'off';
            app.LastModifiedTime21EditField.Position = [715 377 100 22];

            % Create LastModifiedTime22EditField
            app.LastModifiedTime22EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime22EditField.Visible = 'off';
            app.LastModifiedTime22EditField.Position = [735 357 100 22];

            % Create LastModifiedTime23EditField
            app.LastModifiedTime23EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime23EditField.Visible = 'off';
            app.LastModifiedTime23EditField.Position = [755 337 100 22];

            % Create LastModifiedTime24EditField
            app.LastModifiedTime24EditField = uieditfield(app.CurrentDataTab, 'text');
            app.LastModifiedTime24EditField.Visible = 'off';
            app.LastModifiedTime24EditField.Position = [775 317 100 22];

            % Create DataPropertiesTab
            app.DataPropertiesTab = uitab(app.TabGroup);
            app.DataPropertiesTab.Title = 'Data Properties';
            app.DataPropertiesTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create NumberOfRowsEditFieldLabel
            app.NumberOfRowsEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.NumberOfRowsEditFieldLabel.HorizontalAlignment = 'center';
            app.NumberOfRowsEditFieldLabel.FontWeight = 'bold';
            app.NumberOfRowsEditFieldLabel.Position = [6 392 101 22];
            app.NumberOfRowsEditFieldLabel.Text = 'Number of Rows';

            % Create NumberOfRowsEditField
            app.NumberOfRowsEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfRowsEditField.HorizontalAlignment = 'center';
            app.NumberOfRowsEditField.Position = [209 392 100 22];

            % Create NumberOfColumnsEditFieldLabel
            app.NumberOfColumnsEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.NumberOfColumnsEditFieldLabel.HorizontalAlignment = 'center';
            app.NumberOfColumnsEditFieldLabel.FontWeight = 'bold';
            app.NumberOfColumnsEditFieldLabel.Position = [6 368 120 22];
            app.NumberOfColumnsEditFieldLabel.Text = 'Number of Columns';

            % Create NumberOfColumnsEditField
            app.NumberOfColumnsEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfColumnsEditField.HorizontalAlignment = 'center';
            app.NumberOfColumnsEditField.Position = [209 370 100 22];

            % Create NumberOfNumericalFeaturesEditFieldLabel
            app.NumberOfNumericalFeaturesEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.NumberOfNumericalFeaturesEditFieldLabel.HorizontalAlignment = 'center';
            app.NumberOfNumericalFeaturesEditFieldLabel.FontWeight = 'bold';
            app.NumberOfNumericalFeaturesEditFieldLabel.Position = [6 306 180 22];
            app.NumberOfNumericalFeaturesEditFieldLabel.Text = 'Number of Numerical Features';

            % Create NumberOfNumericalFeaturesEditField
            app.NumberOfNumericalFeaturesEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfNumericalFeaturesEditField.HorizontalAlignment = 'center';
            app.NumberOfNumericalFeaturesEditField.Position = [210 306 98 22];

            % Create NumberOfTextFeaturesEditFieldLabel
            app.NumberOfTextFeaturesEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.NumberOfTextFeaturesEditFieldLabel.HorizontalAlignment = 'center';
            app.NumberOfTextFeaturesEditFieldLabel.FontWeight = 'bold';
            app.NumberOfTextFeaturesEditFieldLabel.Position = [6 263 146 22];
            app.NumberOfTextFeaturesEditFieldLabel.Text = 'Number of Text Features';

            % Create NumberOfTextFeaturesEditField
            app.NumberOfTextFeaturesEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfTextFeaturesEditField.HorizontalAlignment = 'center';
            app.NumberOfTextFeaturesEditField.Position = [210 262 98 22];

            % Create NumberofDuplicateRowsLabel
            app.NumberofDuplicateRowsLabel = uilabel(app.DataPropertiesTab);
            app.NumberofDuplicateRowsLabel.HorizontalAlignment = 'center';
            app.NumberofDuplicateRowsLabel.FontWeight = 'bold';
            app.NumberofDuplicateRowsLabel.Position = [8 219 158 22];
            app.NumberofDuplicateRowsLabel.Text = 'Number of Duplicate Rows';

            % Create NumberOfDuplicateRowsEditField
            app.NumberOfDuplicateRowsEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfDuplicateRowsEditField.HorizontalAlignment = 'center';
            app.NumberOfDuplicateRowsEditField.Position = [210 220 100 22];

            % Create NumberofDuplicateColumnsLabel
            app.NumberofDuplicateColumnsLabel = uilabel(app.DataPropertiesTab);
            app.NumberofDuplicateColumnsLabel.HorizontalAlignment = 'center';
            app.NumberofDuplicateColumnsLabel.FontWeight = 'bold';
            app.NumberofDuplicateColumnsLabel.Position = [8 200 178 22];
            app.NumberofDuplicateColumnsLabel.Text = 'Number of Duplicate Columns';

            % Create NumberOfDuplicateColumnsEditField
            app.NumberOfDuplicateColumnsEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfDuplicateColumnsEditField.HorizontalAlignment = 'center';
            app.NumberOfDuplicateColumnsEditField.Position = [210 198 100 22];

            % Create NumberOfDeletedRowsEditFieldLabel
            app.NumberOfDeletedRowsEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.NumberOfDeletedRowsEditFieldLabel.HorizontalAlignment = 'center';
            app.NumberOfDeletedRowsEditFieldLabel.FontWeight = 'bold';
            app.NumberOfDeletedRowsEditFieldLabel.Position = [8 156 148 22];
            app.NumberOfDeletedRowsEditFieldLabel.Text = 'Number of Deleted Rows';

            % Create NumberOfDeletedRowsEditField
            app.NumberOfDeletedRowsEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfDeletedRowsEditField.HorizontalAlignment = 'center';
            app.NumberOfDeletedRowsEditField.Position = [211 156 100 22];

            % Create NumberOfDeletedColumnsEditFieldLabel
            app.NumberOfDeletedColumnsEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.NumberOfDeletedColumnsEditFieldLabel.HorizontalAlignment = 'center';
            app.NumberOfDeletedColumnsEditFieldLabel.FontWeight = 'bold';
            app.NumberOfDeletedColumnsEditFieldLabel.Position = [8 135 167 22];
            app.NumberOfDeletedColumnsEditFieldLabel.Text = 'Number of Deleted Columns';

            % Create NumberOfDeletedColumnsEditField
            app.NumberOfDeletedColumnsEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfDeletedColumnsEditField.HorizontalAlignment = 'center';
            app.NumberOfDeletedColumnsEditField.Position = [211 134 100 22];

            % Create NumberOfDatetimeFeaturesEditFieldLabel
            app.NumberOfDatetimeFeaturesEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.NumberOfDatetimeFeaturesEditFieldLabel.HorizontalAlignment = 'center';
            app.NumberOfDatetimeFeaturesEditFieldLabel.FontWeight = 'bold';
            app.NumberOfDatetimeFeaturesEditFieldLabel.Position = [6 284 173 22];
            app.NumberOfDatetimeFeaturesEditFieldLabel.Text = 'Number of Datetime Features';

            % Create NumberOfDateTimeFeaturesEditField
            app.NumberOfDateTimeFeaturesEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfDateTimeFeaturesEditField.HorizontalAlignment = 'center';
            app.NumberOfDateTimeFeaturesEditField.Position = [210 284 98 22];

            % Create FileSizeinMBEditFieldLabel
            app.FileSizeinMBEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.FileSizeinMBEditFieldLabel.HorizontalAlignment = 'center';
            app.FileSizeinMBEditFieldLabel.FontWeight = 'bold';
            app.FileSizeinMBEditFieldLabel.Position = [6 413 90 22];
            app.FileSizeinMBEditFieldLabel.Text = 'File Size in MB';

            % Create FileSizeinMBEditField
            app.FileSizeinMBEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.FileSizeinMBEditField.HorizontalAlignment = 'center';
            app.FileSizeinMBEditField.Position = [209 414 100 22];

            % Create UIAxes6
            app.UIAxes6 = uiaxes(app.DataPropertiesTab);
            title(app.UIAxes6, '')
            xlabel(app.UIAxes6, '')
            ylabel(app.UIAxes6, 'Number Of Rows')
            app.UIAxes6.PlotBoxAspectRatio = [1 0.352941176470588 0.352941176470588];
            app.UIAxes6.FontWeight = 'bold';
            app.UIAxes6.TickLabelInterpreter = 'latex';
            app.UIAxes6.XTick = [];
            app.UIAxes6.XTickLabelRotation = 30;
            app.UIAxes6.XTickLabel = '';
            app.UIAxes6.YTick = [0 0.2 0.4 0.6 0.8 1];
            app.UIAxes6.Position = [673 443 589 228];

            % Create UIAxes7
            app.UIAxes7 = uiaxes(app.DataPropertiesTab);
            app.UIAxes7.PlotBoxAspectRatio = [1 0.03584229390681 0.03584229390681];
            app.UIAxes7.Visible = 'off';
            app.UIAxes7.Position = [673 387 589 47];

            % Create RemoveExtraSpaceButton
            app.RemoveExtraSpaceButton = uibutton(app.DataPropertiesTab, 'push');
            app.RemoveExtraSpaceButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveExtraSpaceButtonPushed, true);
            app.RemoveExtraSpaceButton.BackgroundColor = [0 0 0];
            app.RemoveExtraSpaceButton.FontWeight = 'bold';
            app.RemoveExtraSpaceButton.FontColor = [1 1 1];
            app.RemoveExtraSpaceButton.Position = [328 674 134 23];
            app.RemoveExtraSpaceButton.Text = 'Remove Extra Space';

            % Create TextListBox
            app.TextListBox = uilistbox(app.DataPropertiesTab);
            app.TextListBox.Items = {};
            app.TextListBox.ValueChangedFcn = createCallbackFcn(app, @TextListBoxValueChanged, true);
            app.TextListBox.Position = [367 466 107 147];
            app.TextListBox.Value = {};

            % Create NumericalListBox
            app.NumericalListBox = uilistbox(app.DataPropertiesTab);
            app.NumericalListBox.Items = {};
            app.NumericalListBox.ValueChangedFcn = createCallbackFcn(app, @NumericalListBoxValueChanged, true);
            app.NumericalListBox.Position = [127 466 115 148];
            app.NumericalListBox.Value = {};

            % Create DatetimeListBox
            app.DatetimeListBox = uilistbox(app.DataPropertiesTab);
            app.DatetimeListBox.Items = {};
            app.DatetimeListBox.ValueChangedFcn = createCallbackFcn(app, @DatetimeListBoxValueChanged, true);
            app.DatetimeListBox.Position = [246 466 117 147];
            app.DatetimeListBox.Value = {};

            % Create TextArea_7
            app.TextArea_7 = uitextarea(app.DataPropertiesTab);
            app.TextArea_7.HorizontalAlignment = 'center';
            app.TextArea_7.FontWeight = 'bold';
            app.TextArea_7.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_7.Position = [127 613 115 24];
            app.TextArea_7.Value = {'Numerical Feature'};

            % Create TextArea_8
            app.TextArea_8 = uitextarea(app.DataPropertiesTab);
            app.TextArea_8.HorizontalAlignment = 'center';
            app.TextArea_8.FontWeight = 'bold';
            app.TextArea_8.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_8.Position = [246 612 117 25];
            app.TextArea_8.Value = {'Datetime Feature'};

            % Create TextArea_9
            app.TextArea_9 = uitextarea(app.DataPropertiesTab);
            app.TextArea_9.HorizontalAlignment = 'center';
            app.TextArea_9.FontWeight = 'bold';
            app.TextArea_9.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_9.Position = [367 612 107 25];
            app.TextArea_9.Value = {'Text Feature'};

            % Create DropDown
            app.DropDown = uidropdown(app.DataPropertiesTab);
            app.DropDown.Items = {'Select', 'Remove all spaces', 'Remove to single space'};
            app.DropDown.ValueChangedFcn = createCallbackFcn(app, @DropDownValueChanged, true);
            app.DropDown.Position = [332 645 124 22];
            app.DropDown.Value = 'Select';

            % Create DropDown_2
            app.DropDown_2 = uidropdown(app.DataPropertiesTab);
            app.DropDown_2.Items = {'Select', 'lower case', 'UPPER CASE', 'Capitalized Case'};
            app.DropDown_2.ValueChangedFcn = createCallbackFcn(app, @DropDown_2ValueChanged, true);
            app.DropDown_2.Position = [214 645 81 22];
            app.DropDown_2.Value = 'Select';

            % Create spaceEditField
            app.spaceEditField = uieditfield(app.DataPropertiesTab, 'text');
            app.spaceEditField.Visible = 'off';
            app.spaceEditField.Position = [443 633 100 22];

            % Create caseEditField
            app.caseEditField = uieditfield(app.DataPropertiesTab, 'text');
            app.caseEditField.Interruptible = 'off';
            app.caseEditField.Visible = 'off';
            app.caseEditField.Position = [437 661 100 22];

            % Create EditField
            app.EditField = uieditfield(app.DataPropertiesTab, 'text');
            app.EditField.Visible = 'off';
            app.EditField.Position = [443 537 100 22];

            % Create caseEditField_2
            app.caseEditField_2 = uieditfield(app.DataPropertiesTab, 'text');
            app.caseEditField_2.Visible = 'off';
            app.caseEditField_2.Position = [427 27 100 22];

            % Create spaceEditField_2
            app.spaceEditField_2 = uieditfield(app.DataPropertiesTab, 'text');
            app.spaceEditField_2.Visible = 'off';
            app.spaceEditField_2.Position = [982 45 100 22];

            % Create EditField_2
            app.EditField_2 = uieditfield(app.DataPropertiesTab, 'text');
            app.EditField_2.Visible = 'off';
            app.EditField_2.Position = [314 633 100 22];

            % Create UITableCase
            app.UITableCase = uitable(app.DataPropertiesTab);
            app.UITableCase.ColumnName = {'Feature'; 'Change Case'};
            app.UITableCase.RowName = {};
            app.UITableCase.Visible = 'off';
            app.UITableCase.Position = [254 169 220 247];

            % Create UITableSpace
            app.UITableSpace = uitable(app.DataPropertiesTab);
            app.UITableSpace.ColumnName = {'Feature'; 'Remove Extra Space'};
            app.UITableSpace.RowName = {};
            app.UITableSpace.Visible = 'off';
            app.UITableSpace.Position = [370 66 220 67];

            % Create DeleteFeatureButton
            app.DeleteFeatureButton = uibutton(app.DataPropertiesTab, 'push');
            app.DeleteFeatureButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteFeatureButtonPushed2, true);
            app.DeleteFeatureButton.BackgroundColor = [0 0 0];
            app.DeleteFeatureButton.FontWeight = 'bold';
            app.DeleteFeatureButton.FontColor = [1 1 1];
            app.DeleteFeatureButton.Position = [1048 673 105 23];
            app.DeleteFeatureButton.Text = 'Delete Feature';

            % Create SortFeaturesButton
            app.SortFeaturesButton = uibutton(app.DataPropertiesTab, 'push');
            app.SortFeaturesButton.ButtonPushedFcn = createCallbackFcn(app, @SortFeaturesButtonPushed, true);
            app.SortFeaturesButton.BackgroundColor = [0 0 0];
            app.SortFeaturesButton.FontWeight = 'bold';
            app.SortFeaturesButton.FontColor = [1 1 1];
            app.SortFeaturesButton.Position = [804 673 98 23];
            app.SortFeaturesButton.Text = 'Sort Features  ';

            % Create UIMissingObservationsTable
            app.UIMissingObservationsTable = uitable(app.DataPropertiesTab);
            app.UIMissingObservationsTable.ColumnName = {'Feature'; 'Missing Observations Percentage'};
            app.UIMissingObservationsTable.RowName = {};
            app.UIMissingObservationsTable.CellSelectionCallback = createCallbackFcn(app, @UIMissingObservationsTableCellSelection2, true);
            app.UIMissingObservationsTable.Position = [335 136 280 277];

            % Create DeleteRowsButton
            app.DeleteRowsButton = uibutton(app.DataPropertiesTab, 'push');
            app.DeleteRowsButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteRowsButtonPushed, true);
            app.DeleteRowsButton.BackgroundColor = [0 0 0];
            app.DeleteRowsButton.FontWeight = 'bold';
            app.DeleteRowsButton.FontColor = [1 1 1];
            app.DeleteRowsButton.Position = [537 675 121 22];
            app.DeleteRowsButton.Text = 'Delete Rows';

            % Create DeleteRowsMinSlider
            app.DeleteRowsMinSlider = uislider(app.DataPropertiesTab);
            app.DeleteRowsMinSlider.Orientation = 'vertical';
            app.DeleteRowsMinSlider.ValueChangedFcn = createCallbackFcn(app, @DeleteRowsMinSliderValueChanged, true);
            app.DeleteRowsMinSlider.Position = [548 466 3 172];

            % Create DeleteRowsMaxSlider
            app.DeleteRowsMaxSlider = uislider(app.DataPropertiesTab);
            app.DeleteRowsMaxSlider.Orientation = 'vertical';
            app.DeleteRowsMaxSlider.ValueChangedFcn = createCallbackFcn(app, @DeleteRowsMaxSliderValueChanged, true);
            app.DeleteRowsMaxSlider.Position = [614 467 3 172];
            app.DeleteRowsMaxSlider.Value = 100;

            % Create EditField_8
            app.EditField_8 = uieditfield(app.DataPropertiesTab, 'numeric');
            app.EditField_8.ValueChangedFcn = createCallbackFcn(app, @EditField_8ValueChanged, true);
            app.EditField_8.Position = [530 648 60 22];

            % Create EditField_9
            app.EditField_9 = uieditfield(app.DataPropertiesTab, 'numeric');
            app.EditField_9.ValueChangedFcn = createCallbackFcn(app, @EditField_9ValueChanged, true);
            app.EditField_9.Position = [599 648 67 22];
            app.EditField_9.Value = 100;

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.DataPropertiesTab);
            title(app.UIAxes5, '')
            xlabel(app.UIAxes5, '')
            ylabel(app.UIAxes5, 'Missing Observations Percentage')
            app.UIAxes5.PlotBoxAspectRatio = [1 0.600977198697068 0.600977198697068];
            app.UIAxes5.FontWeight = 'bold';
            app.UIAxes5.TickLabelInterpreter = 'latex';
            app.UIAxes5.XTick = [];
            app.UIAxes5.XTickLabelRotation = 30;
            app.UIAxes5.Position = [632 89 630 295];

            % Create UITable2_13
            app.UITable2_13 = uitable(app.DataPropertiesTab);
            app.UITable2_13.ColumnName = {'Delete Feature'};
            app.UITable2_13.RowName = {};
            app.UITable2_13.Visible = 'off';
            app.UITable2_13.Position = [168 443 226 84];

            % Create EditFieldWhatsLeft1
            app.EditFieldWhatsLeft1 = uieditfield(app.DataPropertiesTab, 'numeric');
            app.EditFieldWhatsLeft1.Visible = 'off';
            app.EditFieldWhatsLeft1.Position = [244 568 100 22];

            % Create ChangeCaseButton
            app.ChangeCaseButton = uibutton(app.DataPropertiesTab, 'push');
            app.ChangeCaseButton.ButtonPushedFcn = createCallbackFcn(app, @ChangeCaseButtonPushed, true);
            app.ChangeCaseButton.BackgroundColor = [0 0 0];
            app.ChangeCaseButton.FontWeight = 'bold';
            app.ChangeCaseButton.FontColor = [1 1 1];
            app.ChangeCaseButton.Position = [210 674 88 23];
            app.ChangeCaseButton.Text = 'Change Case';

            % Create EditField2_2
            app.EditField2_2 = uieditfield(app.DataPropertiesTab, 'numeric');
            app.EditField2_2.Visible = 'off';
            app.EditField2_2.Position = [840 558 100 22];

            % Create IdListBox
            app.IdListBox = uilistbox(app.DataPropertiesTab);
            app.IdListBox.Items = {};
            app.IdListBox.ValueChangedFcn = createCallbackFcn(app, @IdListBoxValueChanged, true);
            app.IdListBox.Position = [6 467 117 146];
            app.IdListBox.Value = {};

            % Create TextArea_13
            app.TextArea_13 = uitextarea(app.DataPropertiesTab);
            app.TextArea_13.HorizontalAlignment = 'center';
            app.TextArea_13.FontWeight = 'bold';
            app.TextArea_13.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_13.Position = [6 612 117 25];
            app.TextArea_13.Value = {'Id Feature'};

            % Create IdButton
            app.IdButton = uibutton(app.DataPropertiesTab, 'push');
            app.IdButton.ButtonPushedFcn = createCallbackFcn(app, @IdButtonPushed, true);
            app.IdButton.BackgroundColor = [0 0 0];
            app.IdButton.FontWeight = 'bold';
            app.IdButton.FontColor = [1 1 1];
            app.IdButton.Position = [11 675 40 21];
            app.IdButton.Text = 'Id';

            % Create NumberOfNumericalFeaturesEditFieldLabel_2
            app.NumberOfNumericalFeaturesEditFieldLabel_2 = uilabel(app.DataPropertiesTab);
            app.NumberOfNumericalFeaturesEditFieldLabel_2.HorizontalAlignment = 'center';
            app.NumberOfNumericalFeaturesEditFieldLabel_2.FontWeight = 'bold';
            app.NumberOfNumericalFeaturesEditFieldLabel_2.Position = [6 327 133 22];
            app.NumberOfNumericalFeaturesEditFieldLabel_2.Text = 'Number of Id Features';

            % Create NumberOfIdFeaturesEditField
            app.NumberOfIdFeaturesEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.NumberOfIdFeaturesEditField.HorizontalAlignment = 'center';
            app.NumberOfIdFeaturesEditField.Position = [210 328 98 22];

            % Create ActualNoOfRowsEditField
            app.ActualNoOfRowsEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.ActualNoOfRowsEditField.Visible = 'off';
            app.ActualNoOfRowsEditField.Position = [339 591 204 22];

            % Create TextArea_14
            app.TextArea_14 = uitextarea(app.DataPropertiesTab);
            app.TextArea_14.HorizontalAlignment = 'center';
            app.TextArea_14.FontWeight = 'bold';
            app.TextArea_14.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_14.Position = [6 436 303 20];
            app.TextArea_14.Value = {'File Size'};

            % Create TextArea_15
            app.TextArea_15 = uitextarea(app.DataPropertiesTab);
            app.TextArea_15.HorizontalAlignment = 'center';
            app.TextArea_15.FontWeight = 'bold';
            app.TextArea_15.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_15.Position = [6 178 304 20];
            app.TextArea_15.Value = {'Deleted Data'};

            % Create MissingDataPercentageEditFieldLabel
            app.MissingDataPercentageEditFieldLabel = uilabel(app.DataPropertiesTab);
            app.MissingDataPercentageEditFieldLabel.HorizontalAlignment = 'right';
            app.MissingDataPercentageEditFieldLabel.FontWeight = 'bold';
            app.MissingDataPercentageEditFieldLabel.Position = [336 414 148 22];
            app.MissingDataPercentageEditFieldLabel.Text = 'Missing Data Percentage';

            % Create MissingDataPercentageEditField
            app.MissingDataPercentageEditField = uieditfield(app.DataPropertiesTab, 'numeric');
            app.MissingDataPercentageEditField.HorizontalAlignment = 'center';
            app.MissingDataPercentageEditField.Position = [494 414 120 22];

            % Create TextArea_16
            app.TextArea_16 = uitextarea(app.DataPropertiesTab);
            app.TextArea_16.HorizontalAlignment = 'center';
            app.TextArea_16.FontWeight = 'bold';
            app.TextArea_16.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_16.Position = [336 436 278 20];
            app.TextArea_16.Value = {'Missing Data'};

            % Create TextArea_17
            app.TextArea_17 = uitextarea(app.DataPropertiesTab);
            app.TextArea_17.HorizontalAlignment = 'center';
            app.TextArea_17.FontWeight = 'bold';
            app.TextArea_17.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_17.Position = [6 350 303 20];
            app.TextArea_17.Value = {'Feature Count'};

            % Create TextArea_18
            app.TextArea_18 = uitextarea(app.DataPropertiesTab);
            app.TextArea_18.HorizontalAlignment = 'center';
            app.TextArea_18.FontWeight = 'bold';
            app.TextArea_18.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_18.Position = [6 242 303 20];
            app.TextArea_18.Value = {'Duplicate Data'};

            % Create FeatureNamesButton
            app.FeatureNamesButton = uibutton(app.DataPropertiesTab, 'push');
            app.FeatureNamesButton.ButtonPushedFcn = createCallbackFcn(app, @FeatureNamesButtonPushed, true);
            app.FeatureNamesButton.BackgroundColor = [0 0 0];
            app.FeatureNamesButton.FontWeight = 'bold';
            app.FeatureNamesButton.FontColor = [1 1 1];
            app.FeatureNamesButton.Position = [71 674 106 23];
            app.FeatureNamesButton.Text = 'Feature Names';

            % Create DropDown_5
            app.DropDown_5 = uidropdown(app.DataPropertiesTab);
            app.DropDown_5.Items = {'Select', 'lower case', 'UPPER CASE', 'Capitalized Case'};
            app.DropDown_5.Position = [86 646 81 22];
            app.DropDown_5.Value = 'Select';

            % Create FeatureNamesEditField
            app.FeatureNamesEditField = uieditfield(app.DataPropertiesTab, 'text');
            app.FeatureNamesEditField.Visible = 'off';
            app.FeatureNamesEditField.Position = [553 402 100 22];

            % Create EditField4
            app.EditField4 = uieditfield(app.DataPropertiesTab, 'numeric');
            app.EditField4.Visible = 'off';
            app.EditField4.Position = [308 558 100 22];

            % Create NumericalFeaturesTab
            app.NumericalFeaturesTab = uitab(app.TabGroup);
            app.NumericalFeaturesTab.Title = 'Numerical Features ';
            app.NumericalFeaturesTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create UIAxes
            app.UIAxes = uiaxes(app.NumericalFeaturesTab);
            title(app.UIAxes, 'Histogram of numerical feature')
            xlabel(app.UIAxes, '')
            ylabel(app.UIAxes, 'Frequency')
            app.UIAxes.PlotBoxAspectRatio = [0.791383219954649 1 0.791383219954649];
            app.UIAxes.FontWeight = 'bold';
            app.UIAxes.TickLabelInterpreter = 'latex';
            app.UIAxes.XTickLabelRotation = 30;
            app.UIAxes.Position = [867 169 396 459];

            % Create MinEditSliderNumeric
            app.MinEditSliderNumeric = uislider(app.NumericalFeaturesTab);
            app.MinEditSliderNumeric.ValueChangedFcn = createCallbackFcn(app, @MinEditSliderNumericValueChanged, true);
            app.MinEditSliderNumeric.Position = [909 137 341 3];

            % Create MaxEditSliderNumeric
            app.MaxEditSliderNumeric = uislider(app.NumericalFeaturesTab);
            app.MaxEditSliderNumeric.ValueChangedFcn = createCallbackFcn(app, @MaxEditSliderNumericValueChanged, true);
            app.MaxEditSliderNumeric.Position = [909 70 341 3];
            app.MaxEditSliderNumeric.Value = 100;

            % Create UINumericTable
            app.UINumericTable = uitable(app.NumericalFeaturesTab);
            app.UINumericTable.ColumnName = {'Feature'; 'Min'; 'Max'; 'Duplicate Values'; 'Missing Percentage'; 'Less Than Feature Edit'; 'Greater Than Feature Edit'; 'Min Edit'; 'Max Edit'};
            app.UINumericTable.RowName = {};
            app.UINumericTable.ColumnEditable = [false false false false false true true true true];
            app.UINumericTable.CellEditCallback = createCallbackFcn(app, @UINumericTableCellEdit, true);
            app.UINumericTable.CellSelectionCallback = createCallbackFcn(app, @UINumericTableCellSelection, true);
            app.UINumericTable.Position = [1 1 867 655];

            % Create RemoveObservationsNumericButton
            app.RemoveObservationsNumericButton = uibutton(app.NumericalFeaturesTab, 'push');
            app.RemoveObservationsNumericButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveObservationsNumericButtonPushed, true);
            app.RemoveObservationsNumericButton.BackgroundColor = [0 0 0];
            app.RemoveObservationsNumericButton.FontWeight = 'bold';
            app.RemoveObservationsNumericButton.FontColor = [1 1 1];
            app.RemoveObservationsNumericButton.Position = [452 668 146 22];
            app.RemoveObservationsNumericButton.Text = 'Remove Observations ';

            % Create SelectedCellNumericEditField
            app.SelectedCellNumericEditField = uieditfield(app.NumericalFeaturesTab, 'text');
            app.SelectedCellNumericEditField.Visible = 'off';
            app.SelectedCellNumericEditField.Position = [452 405 112 22];

            % Create DeleteRowsNumericButton
            app.DeleteRowsNumericButton = uibutton(app.NumericalFeaturesTab, 'push');
            app.DeleteRowsNumericButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteRowsNumericButtonPushed, true);
            app.DeleteRowsNumericButton.BackgroundColor = [0 0 0];
            app.DeleteRowsNumericButton.FontWeight = 'bold';
            app.DeleteRowsNumericButton.FontColor = [1 1 1];
            app.DeleteRowsNumericButton.Position = [623 668 90 22];
            app.DeleteRowsNumericButton.Text = 'Delete Rows';

            % Create NoOfRowsNumericEditField
            app.NoOfRowsNumericEditField = uieditfield(app.NumericalFeaturesTab, 'numeric');
            app.NoOfRowsNumericEditField.Visible = 'off';
            app.NoOfRowsNumericEditField.Position = [132 679 100 22];

            % Create NoOfRowsNumericEditField_2
            app.NoOfRowsNumericEditField_2 = uieditfield(app.NumericalFeaturesTab, 'numeric');
            app.NoOfRowsNumericEditField_2.Visible = 'off';
            app.NoOfRowsNumericEditField_2.Position = [132 650 100 22];

            % Create NoOfRowsNumericEditField_3
            app.NoOfRowsNumericEditField_3 = uieditfield(app.NumericalFeaturesTab, 'numeric');
            app.NoOfRowsNumericEditField_3.Visible = 'off';
            app.NoOfRowsNumericEditField_3.Position = [271 650 100 22];

            % Create UITableNumericRowsDeleted
            app.UITableNumericRowsDeleted = uitable(app.NumericalFeaturesTab);
            app.UITableNumericRowsDeleted.ColumnName = {'Less Than'; 'Greater Than'; 'Range'};
            app.UITableNumericRowsDeleted.RowName = {};
            app.UITableNumericRowsDeleted.CellEditCallback = createCallbackFcn(app, @UITableNumericRowsDeletedCellEdit, true);
            app.UITableNumericRowsDeleted.Visible = 'off';
            app.UITableNumericRowsDeleted.Position = [40 662 397 34];

            % Create UITable2_2
            app.UITable2_2 = uitable(app.NumericalFeaturesTab);
            app.UITable2_2.ColumnName = {'Features'; 'Less Than Feature Edit'};
            app.UITable2_2.RowName = {};
            app.UITable2_2.Visible = 'off';
            app.UITable2_2.Position = [17 127 364 84];

            % Create UITable2_6
            app.UITable2_6 = uitable(app.NumericalFeaturesTab);
            app.UITable2_6.ColumnName = {'Features'; 'Greater Than Feature Edit'};
            app.UITable2_6.RowName = {};
            app.UITable2_6.Visible = 'off';
            app.UITable2_6.Position = [17 15 364 87];

            % Create UITable2_7
            app.UITable2_7 = uitable(app.NumericalFeaturesTab);
            app.UITable2_7.ColumnName = {'Features'; 'Less Than Feature Edit'};
            app.UITable2_7.RowName = {};
            app.UITable2_7.Visible = 'off';
            app.UITable2_7.Position = [437 127 364 84];

            % Create UITable2_8
            app.UITable2_8 = uitable(app.NumericalFeaturesTab);
            app.UITable2_8.ColumnName = {'Features'; 'Greater Than Feature Edit'};
            app.UITable2_8.RowName = {};
            app.UITable2_8.Visible = 'off';
            app.UITable2_8.Position = [437 15 364 87];

            % Create NumberofBinsEditFieldLabel
            app.NumberofBinsEditFieldLabel = uilabel(app.NumericalFeaturesTab);
            app.NumberofBinsEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofBinsEditFieldLabel.FontWeight = 'bold';
            app.NumberofBinsEditFieldLabel.Position = [980 641 95 22];
            app.NumberofBinsEditFieldLabel.Text = 'Number of Bins';

            % Create NumberofBinsEditField
            app.NumberofBinsEditField = uieditfield(app.NumericalFeaturesTab, 'numeric');
            app.NumberofBinsEditField.HorizontalAlignment = 'center';
            app.NumberofBinsEditField.Position = [1094 641 72 22];

            % Create DatetimeFeaturesTab
            app.DatetimeFeaturesTab = uitab(app.TabGroup);
            app.DatetimeFeaturesTab.Title = 'Datetime Features';
            app.DatetimeFeaturesTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create UIAxes4_3
            app.UIAxes4_3 = uiaxes(app.DatetimeFeaturesTab);
            title(app.UIAxes4_3, 'Histogram of date/time feature')
            xlabel(app.UIAxes4_3, '')
            ylabel(app.UIAxes4_3, 'Frequency')
            app.UIAxes4_3.PlotBoxAspectRatio = [0.818807339449541 1 0.818807339449541];
            app.UIAxes4_3.FontWeight = 'bold';
            app.UIAxes4_3.XTickLabelRotation = 30;
            app.UIAxes4_3.Position = [857 171 406 461];

            % Create MinEditSliderDatetime
            app.MinEditSliderDatetime = uislider(app.DatetimeFeaturesTab);
            app.MinEditSliderDatetime.MajorTicks = [];
            app.MinEditSliderDatetime.ValueChangedFcn = createCallbackFcn(app, @MinEditSliderDatetimeValueChanged, true);
            app.MinEditSliderDatetime.MinorTicks = [];
            app.MinEditSliderDatetime.Tooltip = {''; ''};
            app.MinEditSliderDatetime.Position = [896 131 357 3];

            % Create MaxEditSliderDatetime
            app.MaxEditSliderDatetime = uislider(app.DatetimeFeaturesTab);
            app.MaxEditSliderDatetime.MajorTicks = [];
            app.MaxEditSliderDatetime.ValueChangedFcn = createCallbackFcn(app, @MaxEditSliderDatetimeValueChanged, true);
            app.MaxEditSliderDatetime.MinorTicks = [];
            app.MaxEditSliderDatetime.Position = [896 66 357 3];
            app.MaxEditSliderDatetime.Value = 100;

            % Create UIDatetimeTable
            app.UIDatetimeTable = uitable(app.DatetimeFeaturesTab);
            app.UIDatetimeTable.ColumnName = {'Feature'; 'Min'; 'Max'; 'Missing Percentage'; 'Format Edit'; 'Less Than Feature Edit'; 'Greater Than Feature Edit'; 'Min Edit'; 'Max Edit'};
            app.UIDatetimeTable.RowName = {};
            app.UIDatetimeTable.ColumnEditable = [false false false false true true true true true];
            app.UIDatetimeTable.CellEditCallback = createCallbackFcn(app, @UIDatetimeTableCellEdit, true);
            app.UIDatetimeTable.CellSelectionCallback = createCallbackFcn(app, @UIDatetimeTableCellSelection, true);
            app.UIDatetimeTable.Position = [1 1 846 656];

            % Create ChangeFormatButton
            app.ChangeFormatButton = uibutton(app.DatetimeFeaturesTab, 'push');
            app.ChangeFormatButton.ButtonPushedFcn = createCallbackFcn(app, @ChangeFormatButtonPushed, true);
            app.ChangeFormatButton.BackgroundColor = [0 0 0];
            app.ChangeFormatButton.FontWeight = 'bold';
            app.ChangeFormatButton.FontColor = [1 1 1];
            app.ChangeFormatButton.Position = [346 669 104 22];
            app.ChangeFormatButton.Text = 'Change Format';

            % Create RemoveObservationsDatetimeButton
            app.RemoveObservationsDatetimeButton = uibutton(app.DatetimeFeaturesTab, 'push');
            app.RemoveObservationsDatetimeButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveObservationsDatetimeButtonPushed, true);
            app.RemoveObservationsDatetimeButton.BackgroundColor = [0 0 0];
            app.RemoveObservationsDatetimeButton.FontWeight = 'bold';
            app.RemoveObservationsDatetimeButton.FontColor = [1 1 1];
            app.RemoveObservationsDatetimeButton.Position = [461 669 146 22];
            app.RemoveObservationsDatetimeButton.Text = 'Remove Observations ';

            % Create SelectedCellDatetimeEditField
            app.SelectedCellDatetimeEditField = uieditfield(app.DatetimeFeaturesTab, 'text');
            app.SelectedCellDatetimeEditField.Visible = 'off';
            app.SelectedCellDatetimeEditField.Position = [792 282 100 22];

            % Create DeleteRowsDatetimeButton
            app.DeleteRowsDatetimeButton = uibutton(app.DatetimeFeaturesTab, 'push');
            app.DeleteRowsDatetimeButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteRowsDatetimeButtonPushed, true);
            app.DeleteRowsDatetimeButton.BackgroundColor = [0 0 0];
            app.DeleteRowsDatetimeButton.FontWeight = 'bold';
            app.DeleteRowsDatetimeButton.FontColor = [1 1 1];
            app.DeleteRowsDatetimeButton.Position = [616 669 91 22];
            app.DeleteRowsDatetimeButton.Text = 'Delete Rows';

            % Create SelectedDatetimeFormatEditField
            app.SelectedDatetimeFormatEditField = uieditfield(app.DatetimeFeaturesTab, 'text');
            app.SelectedDatetimeFormatEditField.Visible = 'off';
            app.SelectedDatetimeFormatEditField.Position = [181 507 100 22];

            % Create NoOfRowsDatetimeEditField
            app.NoOfRowsDatetimeEditField = uieditfield(app.DatetimeFeaturesTab, 'numeric');
            app.NoOfRowsDatetimeEditField.Visible = 'off';
            app.NoOfRowsDatetimeEditField.Position = [43 677 100 22];

            % Create NoOfRowsDatetimeEditField_2
            app.NoOfRowsDatetimeEditField_2 = uieditfield(app.DatetimeFeaturesTab, 'numeric');
            app.NoOfRowsDatetimeEditField_2.Visible = 'off';
            app.NoOfRowsDatetimeEditField_2.Position = [43 649 100 22];

            % Create NoOfRowsDatetimeEditField_3
            app.NoOfRowsDatetimeEditField_3 = uieditfield(app.DatetimeFeaturesTab, 'numeric');
            app.NoOfRowsDatetimeEditField_3.Visible = 'off';
            app.NoOfRowsDatetimeEditField_3.Position = [161 649 100 22];

            % Create UITableDatetimeRowsDeleted
            app.UITableDatetimeRowsDeleted = uitable(app.DatetimeFeaturesTab);
            app.UITableDatetimeRowsDeleted.ColumnName = {'Less Than'; 'Greater Than'; 'Range'};
            app.UITableDatetimeRowsDeleted.RowName = {};
            app.UITableDatetimeRowsDeleted.CellEditCallback = createCallbackFcn(app, @UITableDatetimeRowsDeletedCellEdit, true);
            app.UITableDatetimeRowsDeleted.Visible = 'off';
            app.UITableDatetimeRowsDeleted.Position = [21 661 304 41];

            % Create UITable2
            app.UITable2 = uitable(app.DatetimeFeaturesTab);
            app.UITable2.ColumnName = {'Features'; 'Format'};
            app.UITable2.RowName = {};
            app.UITable2.Visible = 'off';
            app.UITable2.Position = [21 348 302 68];

            % Create UITable2_9
            app.UITable2_9 = uitable(app.DatetimeFeaturesTab);
            app.UITable2_9.ColumnName = {'Features'; 'Less Than Feature Edit'};
            app.UITable2_9.RowName = {};
            app.UITable2_9.Visible = 'off';
            app.UITable2_9.Position = [21 199 364 84];

            % Create UITable2_10
            app.UITable2_10 = uitable(app.DatetimeFeaturesTab);
            app.UITable2_10.ColumnName = {'Features'; 'Less Than Feature Edit'};
            app.UITable2_10.RowName = {};
            app.UITable2_10.Visible = 'off';
            app.UITable2_10.Position = [428 199 364 84];

            % Create UITable2_11
            app.UITable2_11 = uitable(app.DatetimeFeaturesTab);
            app.UITable2_11.ColumnName = {'Features'; 'Greater Than Feature Edit'};
            app.UITable2_11.RowName = {};
            app.UITable2_11.Visible = 'off';
            app.UITable2_11.Position = [21 81 364 87];

            % Create UITable2_12
            app.UITable2_12 = uitable(app.DatetimeFeaturesTab);
            app.UITable2_12.ColumnName = {'Features'; 'Greater Than Feature Edit'};
            app.UITable2_12.RowName = {};
            app.UITable2_12.Visible = 'off';
            app.UITable2_12.Position = [428 81 364 87];

            % Create ConverttoExcelDATEVALUEButton
            app.ConverttoExcelDATEVALUEButton = uibutton(app.DatetimeFeaturesTab, 'push');
            app.ConverttoExcelDATEVALUEButton.ButtonPushedFcn = createCallbackFcn(app, @ConverttoExcelDATEVALUEButtonPushed, true);
            app.ConverttoExcelDATEVALUEButton.BackgroundColor = [0 0 0];
            app.ConverttoExcelDATEVALUEButton.FontWeight = 'bold';
            app.ConverttoExcelDATEVALUEButton.FontColor = [1 1 1];
            app.ConverttoExcelDATEVALUEButton.Position = [150.5 670 185 22];
            app.ConverttoExcelDATEVALUEButton.Text = 'Convert to Excel DATEVALUE';

            % Create TextFeaturesTab
            app.TextFeaturesTab = uitab(app.TabGroup);
            app.TextFeaturesTab.Title = 'Text Features';
            app.TextFeaturesTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create UIAxes3_3
            app.UIAxes3_3 = uiaxes(app.TextFeaturesTab);
            title(app.UIAxes3_3, 'Histogram of text feature')
            xlabel(app.UIAxes3_3, '')
            ylabel(app.UIAxes3_3, 'Frequency')
            app.UIAxes3_3.PlotBoxAspectRatio = [1 0.519503546099291 0.519503546099291];
            app.UIAxes3_3.FontWeight = 'bold';
            app.UIAxes3_3.XTickLabelRotation = 90;
            app.UIAxes3_3.Position = [9 20 613 353];

            % Create UIAxes3_4
            app.UIAxes3_4 = uiaxes(app.TextFeaturesTab);
            title(app.UIAxes3_4, 'Boxplot for each category')
            xlabel(app.UIAxes3_4, '')
            ylabel(app.UIAxes3_4, '')
            app.UIAxes3_4.PlotBoxAspectRatio = [1 0.534364261168385 0.534364261168385];
            app.UIAxes3_4.FontWeight = 'bold';
            app.UIAxes3_4.XTick = [];
            app.UIAxes3_4.XTickLabelRotation = 90;
            app.UIAxes3_4.Position = [635 20 628 353];

            % Create UITextTable
            app.UITextTable = uitable(app.TextFeaturesTab);
            app.UITextTable.ColumnName = {'Feature'; 'Category'; 'Category Count'; 'Missing Percentage'};
            app.UITextTable.ColumnWidth = {'auto'};
            app.UITextTable.RowName = {};
            app.UITextTable.ColumnEditable = false;
            app.UITextTable.CellSelectionCallback = createCallbackFcn(app, @UITextTableCellSelection, true);
            app.UITextTable.Position = [9 376 361 265];

            % Create UITableTextCategory
            app.UITableTextCategory = uitable(app.TextFeaturesTab);
            app.UITableTextCategory.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableTextCategory.RowName = {};
            app.UITableTextCategory.Visible = 'off';
            app.UITableTextCategory.Position = [23 277 119 303];

            % Create SelectSimilarCategoriesButton
            app.SelectSimilarCategoriesButton = uibutton(app.TextFeaturesTab, 'push');
            app.SelectSimilarCategoriesButton.ButtonPushedFcn = createCallbackFcn(app, @SelectSimilarCategoriesButtonPushed, true);
            app.SelectSimilarCategoriesButton.BackgroundColor = [0 0 0];
            app.SelectSimilarCategoriesButton.FontWeight = 'bold';
            app.SelectSimilarCategoriesButton.FontColor = [1 1 1];
            app.SelectSimilarCategoriesButton.Position = [419 675 160 22];
            app.SelectSimilarCategoriesButton.Text = 'Select Similar Categories';

            % Create OneHotEncodingButton
            app.OneHotEncodingButton = uibutton(app.TextFeaturesTab, 'push');
            app.OneHotEncodingButton.ButtonPushedFcn = createCallbackFcn(app, @OneHotEncodingButtonPushed, true);
            app.OneHotEncodingButton.BackgroundColor = [0 0 0];
            app.OneHotEncodingButton.FontWeight = 'bold';
            app.OneHotEncodingButton.FontColor = [1 1 1];
            app.OneHotEncodingButton.Position = [183 674 148 22];
            app.OneHotEncodingButton.Text = 'One Hot Encoding';

            % Create SelectedCellTextEditField
            app.SelectedCellTextEditField = uieditfield(app.TextFeaturesTab, 'text');
            app.SelectedCellTextEditField.Visible = 'off';
            app.SelectedCellTextEditField.Position = [610 647 100 22];

            % Create UICategoryTextTable
            app.UICategoryTextTable = uitable(app.TextFeaturesTab);
            app.UICategoryTextTable.ColumnName = {'Replace Edit'; 'With Edit'};
            app.UICategoryTextTable.RowName = {};
            app.UICategoryTextTable.ColumnEditable = [false true];
            app.UICategoryTextTable.Position = [376 376 246 265];

            % Create UIBoxplotTextTable
            app.UIBoxplotTextTable = uitable(app.TextFeaturesTab);
            app.UIBoxplotTextTable.ColumnName = {''};
            app.UIBoxplotTextTable.ColumnWidth = {'auto'};
            app.UIBoxplotTextTable.RowName = {};
            app.UIBoxplotTextTable.ColumnEditable = false;
            app.UIBoxplotTextTable.CellSelectionCallback = createCallbackFcn(app, @UIBoxplotTextTableCellSelection, true);
            app.UIBoxplotTextTable.Position = [635 376 628 265];

            % Create RemoveObservationsTextButton
            app.RemoveObservationsTextButton = uibutton(app.TextFeaturesTab, 'push');
            app.RemoveObservationsTextButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveObservationsTextButtonPushed, true);
            app.RemoveObservationsTextButton.BackgroundColor = [0 0 0];
            app.RemoveObservationsTextButton.FontWeight = 'bold';
            app.RemoveObservationsTextButton.FontColor = [1 1 1];
            app.RemoveObservationsTextButton.Position = [740 675 146 22];
            app.RemoveObservationsTextButton.Text = 'Remove Observations ';

            % Create UpdateFeatureButtonDatetime_4
            app.UpdateFeatureButtonDatetime_4 = uibutton(app.TextFeaturesTab, 'push');
            app.UpdateFeatureButtonDatetime_4.BackgroundColor = [0 0 0];
            app.UpdateFeatureButtonDatetime_4.FontWeight = 'bold';
            app.UpdateFeatureButtonDatetime_4.FontColor = [1 1 1];
            app.UpdateFeatureButtonDatetime_4.Position = [1040 675 100 22];
            app.UpdateFeatureButtonDatetime_4.Text = 'Delete Rows';

            % Create SelectedCellTextEditField_2
            app.SelectedCellTextEditField_2 = uieditfield(app.TextFeaturesTab, 'numeric');
            app.SelectedCellTextEditField_2.Visible = 'off';
            app.SelectedCellTextEditField_2.Position = [13 654 100 22];

            % Create SelectedCellTextEditField_3
            app.SelectedCellTextEditField_3 = uieditfield(app.TextFeaturesTab, 'numeric');
            app.SelectedCellTextEditField_3.Visible = 'off';
            app.SelectedCellTextEditField_3.Position = [621 647 100 22];

            % Create UITableTextRowsDeleted
            app.UITableTextRowsDeleted = uitable(app.TextFeaturesTab);
            app.UITableTextRowsDeleted.ColumnName = {''};
            app.UITableTextRowsDeleted.RowName = {};
            app.UITableTextRowsDeleted.Visible = 'off';
            app.UITableTextRowsDeleted.Position = [55 114 304 255];

            % Create UITableTextRowIndices
            app.UITableTextRowIndices = uitable(app.TextFeaturesTab);
            app.UITableTextRowIndices.ColumnName = {''};
            app.UITableTextRowIndices.ColumnWidth = {'auto'};
            app.UITableTextRowIndices.RowName = {};
            app.UITableTextRowIndices.ColumnEditable = false;
            app.UITableTextRowIndices.Visible = 'off';
            app.UITableTextRowIndices.Position = [228 114 354 255];

            % Create UITableTextColumnIndices
            app.UITableTextColumnIndices = uitable(app.TextFeaturesTab);
            app.UITableTextColumnIndices.ColumnName = {''};
            app.UITableTextColumnIndices.ColumnWidth = {'auto'};
            app.UITableTextColumnIndices.RowName = {};
            app.UITableTextColumnIndices.ColumnEditable = false;
            app.UITableTextColumnIndices.Visible = 'off';
            app.UITableTextColumnIndices.Position = [635 114 388 255];

            % Create EditField_6
            app.EditField_6 = uieditfield(app.TextFeaturesTab, 'text');
            app.EditField_6.Visible = 'off';
            app.EditField_6.Position = [419 651 100 22];

            % Create UITableCategoryText_2
            app.UITableCategoryText_2 = uitable(app.TextFeaturesTab);
            app.UITableCategoryText_2.ColumnName = {'Replace Edit'; 'With Edit'};
            app.UITableCategoryText_2.RowName = {};
            app.UITableCategoryText_2.ColumnEditable = [false true];
            app.UITableCategoryText_2.Visible = 'off';
            app.UITableCategoryText_2.Position = [29 387 246 265];

            % Create DropDown_4
            app.DropDown_4 = uidropdown(app.TextFeaturesTab);
            app.DropDown_4.Items = {'Select', 'Transform n categories to n dummy variables for all text features', 'Transform n categories to n-1 dummy variables for all text features'};
            app.DropDown_4.ValueChangedFcn = createCallbackFcn(app, @DropDown_4ValueChanged, true);
            app.DropDown_4.Position = [202 647 109 22];
            app.DropDown_4.Value = 'Select';

            % Create categoryEditField
            app.categoryEditField = uieditfield(app.TextFeaturesTab, 'text');
            app.categoryEditField.Interruptible = 'off';
            app.categoryEditField.Visible = 'off';
            app.categoryEditField.Position = [129 398 100 22];

            % Create EditField_10Label
            app.EditField_10Label = uilabel(app.TextFeaturesTab);
            app.EditField_10Label.HorizontalAlignment = 'right';
            app.EditField_10Label.Visible = 'off';
            app.EditField_10Label.Position = [80 536 56 22];
            app.EditField_10Label.Text = 'Edit Field';

            % Create EditField_3
            app.EditField_3 = uieditfield(app.TextFeaturesTab, 'numeric');
            app.EditField_3.Visible = 'off';
            app.EditField_3.Position = [151 536 100 22];

            % Create EditField2_3
            app.EditField2_3 = uieditfield(app.TextFeaturesTab, 'numeric');
            app.EditField2_3.Visible = 'off';
            app.EditField2_3.Position = [744 599 100 22];

            % Create EditField2_4
            app.EditField2_4 = uieditfield(app.TextFeaturesTab, 'numeric');
            app.EditField2_4.Visible = 'off';
            app.EditField2_4.Position = [764 579 100 22];

            % Create DeleteRowsTextButton
            app.DeleteRowsTextButton = uibutton(app.TextFeaturesTab, 'push');
            app.DeleteRowsTextButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteRowsTextButtonPushed, true);
            app.DeleteRowsTextButton.BackgroundColor = [0 0 0];
            app.DeleteRowsTextButton.FontWeight = 'bold';
            app.DeleteRowsTextButton.FontColor = [1 1 1];
            app.DeleteRowsTextButton.Position = [1040 675 100 22];
            app.DeleteRowsTextButton.Text = 'Delete Rows';

            % Create LabelEncodingButton
            app.LabelEncodingButton = uibutton(app.TextFeaturesTab, 'push');
            app.LabelEncodingButton.ButtonPushedFcn = createCallbackFcn(app, @LabelEncodingButtonPushed, true);
            app.LabelEncodingButton.BackgroundColor = [0 0 0];
            app.LabelEncodingButton.FontWeight = 'bold';
            app.LabelEncodingButton.FontColor = [1 1 1];
            app.LabelEncodingButton.Position = [9 675 148 22];
            app.LabelEncodingButton.Text = 'Label Encoding';

            % Create ImputationTab
            app.ImputationTab = uitab(app.TabGroup);
            app.ImputationTab.Title = 'Imputation';

            % Create ImputeButton
            app.ImputeButton = uibutton(app.ImputationTab, 'push');
            app.ImputeButton.ButtonPushedFcn = createCallbackFcn(app, @ImputeButtonPushed, true);
            app.ImputeButton.BackgroundColor = [0 0 0];
            app.ImputeButton.FontWeight = 'bold';
            app.ImputeButton.FontColor = [1 1 1];
            app.ImputeButton.Position = [915 649 75 23];
            app.ImputeButton.Text = 'Impute ';

            % Create ImputationErrorEditField
            app.ImputationErrorEditField = uieditfield(app.ImputationTab, 'text');
            app.ImputationErrorEditField.FontWeight = 'bold';
            app.ImputationErrorEditField.FontColor = [1 0 0];
            app.ImputationErrorEditField.Visible = 'off';
            app.ImputationErrorEditField.Position = [13 9 1245 33];

            % Create EditField2
            app.EditField2 = uieditfield(app.ImputationTab, 'numeric');
            app.EditField2.Visible = 'off';
            app.EditField2.Position = [260 671 100 22];

            % Create UIAxes8
            app.UIAxes8 = uiaxes(app.ImputationTab);
            title(app.UIAxes8, 'Imputation Plot')
            xlabel(app.UIAxes8, '')
            ylabel(app.UIAxes8, 'Number Of Rows')
            app.UIAxes8.PlotBoxAspectRatio = [1 0.919389978213508 0.919389978213508];
            app.UIAxes8.FontWeight = 'bold';
            app.UIAxes8.TickLabelInterpreter = 'latex';
            app.UIAxes8.XTick = [];
            app.UIAxes8.XTickLabelRotation = 30;
            app.UIAxes8.Position = [671 111 563 410];

            % Create UIAxes9
            app.UIAxes9 = uiaxes(app.ImputationTab);
            title(app.UIAxes9, '')
            xlabel(app.UIAxes9, '')
            ylabel(app.UIAxes9, '')
            app.UIAxes9.PlotBoxAspectRatio = [1 0.0657894736842105 0.0657894736842105];
            app.UIAxes9.Visible = 'off';
            app.UIAxes9.Position = [671 49 563 63];

            % Create PercentageofMissingDataEditFieldLabel
            app.PercentageofMissingDataEditFieldLabel = uilabel(app.ImputationTab);
            app.PercentageofMissingDataEditFieldLabel.HorizontalAlignment = 'right';
            app.PercentageofMissingDataEditFieldLabel.FontWeight = 'bold';
            app.PercentageofMissingDataEditFieldLabel.Position = [10 599 166 22];
            app.PercentageofMissingDataEditFieldLabel.Text = 'Percentage of Missing Data ';

            % Create PercentageofMissingDataEditField
            app.PercentageofMissingDataEditField = uieditfield(app.ImputationTab, 'numeric');
            app.PercentageofMissingDataEditField.HorizontalAlignment = 'center';
            app.PercentageofMissingDataEditField.Position = [187 599 91 22];

            % Create UIMissingObservationsTable_2
            app.UIMissingObservationsTable_2 = uitable(app.ImputationTab);
            app.UIMissingObservationsTable_2.ColumnName = {'Feature'; 'Missing Observations Percentage'};
            app.UIMissingObservationsTable_2.RowName = {};
            app.UIMissingObservationsTable_2.CellSelectionCallback = createCallbackFcn(app, @UIMissingObservationsTable_2CellSelection, true);
            app.UIMissingObservationsTable_2.Position = [63 129 275 372];

            % Create DeleteFeatureButton_2
            app.DeleteFeatureButton_2 = uibutton(app.ImputationTab, 'push');
            app.DeleteFeatureButton_2.ButtonPushedFcn = createCallbackFcn(app, @DeleteFeatureButton_2Pushed2, true);
            app.DeleteFeatureButton_2.BackgroundColor = [0 0 0];
            app.DeleteFeatureButton_2.FontWeight = 'bold';
            app.DeleteFeatureButton_2.FontColor = [1 1 1];
            app.DeleteFeatureButton_2.Position = [148 649 105 23];
            app.DeleteFeatureButton_2.Text = 'Delete Feature';

            % Create UITable2_14
            app.UITable2_14 = uitable(app.ImputationTab);
            app.UITable2_14.ColumnName = {'Delete Feature'};
            app.UITable2_14.RowName = {};
            app.UITable2_14.Visible = 'off';
            app.UITable2_14.Position = [103 255 226 84];

            % Create EditField3Label
            app.EditField3Label = uilabel(app.ImputationTab);
            app.EditField3Label.HorizontalAlignment = 'right';
            app.EditField3Label.Visible = 'off';
            app.EditField3Label.Position = [43 338 62 22];
            app.EditField3Label.Text = 'Edit Field3';

            % Create EditFieldWhatsLeft2
            app.EditFieldWhatsLeft2 = uieditfield(app.ImputationTab, 'numeric');
            app.EditFieldWhatsLeft2.Visible = 'off';
            app.EditFieldWhatsLeft2.Position = [120 338 100 22];

            % Create PercentageofMissingDataImputedEditFieldLabel
            app.PercentageofMissingDataImputedEditFieldLabel = uilabel(app.ImputationTab);
            app.PercentageofMissingDataImputedEditFieldLabel.HorizontalAlignment = 'right';
            app.PercentageofMissingDataImputedEditFieldLabel.FontWeight = 'bold';
            app.PercentageofMissingDataImputedEditFieldLabel.Position = [731 599 217 22];
            app.PercentageofMissingDataImputedEditFieldLabel.Text = 'Percentage of Missing Data Imputed ';

            % Create PercentageofMissingDataImputedEditField
            app.PercentageofMissingDataImputedEditField = uieditfield(app.ImputationTab, 'numeric');
            app.PercentageofMissingDataImputedEditField.HorizontalAlignment = 'center';
            app.PercentageofMissingDataImputedEditField.Position = [959 599 91 22];

            % Create NumberofTreesEditFieldLabel
            app.NumberofTreesEditFieldLabel = uilabel(app.ImputationTab);
            app.NumberofTreesEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofTreesEditFieldLabel.FontWeight = 'bold';
            app.NumberofTreesEditFieldLabel.Position = [844 537 100 22];
            app.NumberofTreesEditFieldLabel.Text = 'Number of Trees';

            % Create NumberofTreesEditField
            app.NumberofTreesEditField = uieditfield(app.ImputationTab, 'numeric');
            app.NumberofTreesEditField.HorizontalAlignment = 'center';
            app.NumberofTreesEditField.Position = [963 537 72 22];
            app.NumberofTreesEditField.Value = 10;

            % Create DataTransformationTab
            app.DataTransformationTab = uitab(app.TabGroup);
            app.DataTransformationTab.Title = 'Data Transformation';

            % Create TransformButton
            app.TransformButton = uibutton(app.DataTransformationTab, 'push');
            app.TransformButton.ButtonPushedFcn = createCallbackFcn(app, @TransformButtonPushed, true);
            app.TransformButton.BackgroundColor = [0 0 0];
            app.TransformButton.FontWeight = 'bold';
            app.TransformButton.FontColor = [1 1 1];
            app.TransformButton.Position = [531 674 102 23];
            app.TransformButton.Text = 'Transform ';

            % Create SelectNumericalFeaturesListBox
            app.SelectNumericalFeaturesListBox = uilistbox(app.DataTransformationTab);
            app.SelectNumericalFeaturesListBox.Items = {};
            app.SelectNumericalFeaturesListBox.Multiselect = 'on';
            app.SelectNumericalFeaturesListBox.ValueChangedFcn = createCallbackFcn(app, @SelectNumericalFeaturesListBoxValueChanged, true);
            app.SelectNumericalFeaturesListBox.Position = [13 78 215 536];
            app.SelectNumericalFeaturesListBox.Value = {};

            % Create SelectedListBox
            app.SelectedListBox = uilistbox(app.DataTransformationTab);
            app.SelectedListBox.Items = {};
            app.SelectedListBox.ValueChangedFcn = createCallbackFcn(app, @SelectedListBoxValueChanged, true);
            app.SelectedListBox.Position = [261 78 215 536];
            app.SelectedListBox.Value = {};

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.DataTransformationTab);
            title(app.UIAxes_2, 'Histogram of numerical feature')
            xlabel(app.UIAxes_2, '')
            ylabel(app.UIAxes_2, 'Frequency')
            app.UIAxes_2.PlotBoxAspectRatio = [0.964814814814815 1 0.964814814814815];
            app.UIAxes_2.FontWeight = 'bold';
            app.UIAxes_2.TickLabelInterpreter = 'latex';
            app.UIAxes_2.XTickLabelRotation = 30;
            app.UIAxes_2.Position = [695 77 563 509];

            % Create DataTransformationDropDown
            app.DataTransformationDropDown = uidropdown(app.DataTransformationTab);
            app.DataTransformationDropDown.Items = {'Select', 'mean 0 and standard deviation 1', 'between 0 and 1', 'ln', 'log10', 'log2', 'exp', 'sqrt', 'reciprocal'};
            app.DataTransformationDropDown.ValueChangedFcn = createCallbackFcn(app, @DataTransformationDropDownValueChanged, true);
            app.DataTransformationDropDown.Position = [521 643 122 21];
            app.DataTransformationDropDown.Value = 'Select';

            % Create TextArea_11
            app.TextArea_11 = uitextarea(app.DataTransformationTab);
            app.TextArea_11.HorizontalAlignment = 'center';
            app.TextArea_11.FontWeight = 'bold';
            app.TextArea_11.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_11.Position = [13 614 215 26];
            app.TextArea_11.Value = {'Select Numerical Features'};

            % Create TextArea_12
            app.TextArea_12 = uitextarea(app.DataTransformationTab);
            app.TextArea_12.HorizontalAlignment = 'center';
            app.TextArea_12.FontWeight = 'bold';
            app.TextArea_12.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_12.Position = [261 614 215 26];
            app.TextArea_12.Value = {'Selected Numerical Features'};

            % Create transformationEditField
            app.transformationEditField = uieditfield(app.DataTransformationTab, 'text');
            app.transformationEditField.Visible = 'off';
            app.transformationEditField.Position = [545 345 100 22];

            % Create DataTransformationErrorEditField
            app.DataTransformationErrorEditField = uieditfield(app.DataTransformationTab, 'text');
            app.DataTransformationErrorEditField.FontWeight = 'bold';
            app.DataTransformationErrorEditField.FontColor = [1 0 0];
            app.DataTransformationErrorEditField.Visible = 'off';
            app.DataTransformationErrorEditField.Position = [13 25 1245 33];

            % Create NumberofBinsEditFieldLabel_2
            app.NumberofBinsEditFieldLabel_2 = uilabel(app.DataTransformationTab);
            app.NumberofBinsEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NumberofBinsEditFieldLabel_2.FontWeight = 'bold';
            app.NumberofBinsEditFieldLabel_2.Position = [882 614 95 22];
            app.NumberofBinsEditFieldLabel_2.Text = 'Number of Bins';

            % Create NumberofBinsEditField_2
            app.NumberofBinsEditField_2 = uieditfield(app.DataTransformationTab, 'numeric');
            app.NumberofBinsEditField_2.HorizontalAlignment = 'center';
            app.NumberofBinsEditField_2.Position = [1001 614 72 22];

            % Create SaveDataTab
            app.SaveDataTab = uitab(app.TabGroup);
            app.SaveDataTab.Title = 'Save Data ';

            % Create SaveButton
            app.SaveButton = uibutton(app.SaveDataTab, 'push');
            app.SaveButton.ButtonPushedFcn = createCallbackFcn(app, @SaveButtonPushed, true);
            app.SaveButton.BackgroundColor = [0 0 0];
            app.SaveButton.FontWeight = 'bold';
            app.SaveButton.FontColor = [1 1 1];
            app.SaveButton.Position = [9 677 77 23];
            app.SaveButton.Text = 'Save ';

            % Create ListBox
            app.ListBox = uilistbox(app.SaveDataTab);
            app.ListBox.Items = {};
            app.ListBox.FontColor = [0 0 1];
            app.ListBox.Position = [95 1 1172 697];
            app.ListBox.Value = {};

            % Create ResultsTab
            app.ResultsTab = uitab(app.TabGroup);
            app.ResultsTab.Title = 'Results';

            % Create GenerateReportButton
            app.GenerateReportButton = uibutton(app.ResultsTab, 'push');
            app.GenerateReportButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateReportButtonPushed, true);
            app.GenerateReportButton.BackgroundColor = [0 0 0];
            app.GenerateReportButton.FontWeight = 'bold';
            app.GenerateReportButton.FontColor = [1 1 1];
            app.GenerateReportButton.Position = [7 673 137 23];
            app.GenerateReportButton.Text = 'Generate Report';

            % Create DataPropertiesCheckBox
            app.DataPropertiesCheckBox = uicheckbox(app.ResultsTab);
            app.DataPropertiesCheckBox.Text = 'Data Properties';
            app.DataPropertiesCheckBox.FontWeight = 'bold';
            app.DataPropertiesCheckBox.Position = [7 622 137 22];

            % Create NumericalFeaturesCheckBox
            app.NumericalFeaturesCheckBox = uicheckbox(app.ResultsTab);
            app.NumericalFeaturesCheckBox.Text = 'Numerical Features ';
            app.NumericalFeaturesCheckBox.FontWeight = 'bold';
            app.NumericalFeaturesCheckBox.Position = [7 597 137 22];

            % Create DatetimeFeaturesCheckBox
            app.DatetimeFeaturesCheckBox = uicheckbox(app.ResultsTab);
            app.DatetimeFeaturesCheckBox.Text = 'Datetime Features';
            app.DatetimeFeaturesCheckBox.FontWeight = 'bold';
            app.DatetimeFeaturesCheckBox.Position = [7 573 137 22];

            % Create TextFeaturesCheckBox
            app.TextFeaturesCheckBox = uicheckbox(app.ResultsTab);
            app.TextFeaturesCheckBox.Text = 'Text Features';
            app.TextFeaturesCheckBox.FontWeight = 'bold';
            app.TextFeaturesCheckBox.Position = [7 550 137 22];

            % Create DataTransformationCheckBox
            app.DataTransformationCheckBox = uicheckbox(app.ResultsTab);
            app.DataTransformationCheckBox.Text = 'Data Transformation';
            app.DataTransformationCheckBox.FontWeight = 'bold';
            app.DataTransformationCheckBox.Position = [7 504 139 22];

            % Create SaveDataCheckBox
            app.SaveDataCheckBox = uicheckbox(app.ResultsTab);
            app.SaveDataCheckBox.Text = 'Save Data';
            app.SaveDataCheckBox.FontWeight = 'bold';
            app.SaveDataCheckBox.Position = [7 482 137 22];

            % Create TextArea_10
            app.TextArea_10 = uitextarea(app.ResultsTab);
            app.TextArea_10.HorizontalAlignment = 'center';
            app.TextArea_10.FontWeight = 'bold';
            app.TextArea_10.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea_10.Position = [8 646 137 20];
            app.TextArea_10.Value = {'Tick To Exclude'};

            % Create ListBox_2
            app.ListBox_2 = uilistbox(app.ResultsTab);
            app.ListBox_2.Items = {};
            app.ListBox_2.FontColor = [0 0 1];
            app.ListBox_2.Position = [159 1 1108 695];
            app.ListBox_2.Value = {};

            % Create ImputationCheckBox
            app.ImputationCheckBox = uicheckbox(app.ResultsTab);
            app.ImputationCheckBox.Text = 'Imputation';
            app.ImputationCheckBox.FontWeight = 'bold';
            app.ImputationCheckBox.Position = [7 527 83 22];

            % Create LastModifiedTime17EditField
            app.LastModifiedTime17EditField = uieditfield(app.ResultsTab, 'text');
            app.LastModifiedTime17EditField.Visible = 'off';
            app.LastModifiedTime17EditField.Position = [378 511 100 22];

            % Create LastModifiedTime18EditField
            app.LastModifiedTime18EditField = uieditfield(app.ResultsTab, 'text');
            app.LastModifiedTime18EditField.Visible = 'off';
            app.LastModifiedTime18EditField.Position = [416 544 100 22];

            % Create TextArea
            app.TextArea = uitextarea(app.UIFigureDataCleaningTool);
            app.TextArea.HorizontalAlignment = 'center';
            app.TextArea.FontWeight = 'bold';
            app.TextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea.Visible = 'off';
            app.TextArea.Position = [446 746 831 22];
            app.TextArea.Value = {'Data Properties'};

            % Create LastModifiedTime2EditField
            app.LastModifiedTime2EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime2EditField.Visible = 'off';
            app.LastModifiedTime2EditField.Position = [542 722 100 22];

            % Create LastModifiedTime8EditField
            app.LastModifiedTime8EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime8EditField.Visible = 'off';
            app.LastModifiedTime8EditField.Position = [542 722 100 22];

            % Create LastModifiedTime9EditField
            app.LastModifiedTime9EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime9EditField.Visible = 'off';
            app.LastModifiedTime9EditField.Position = [542 722 100 22];

            % Create LastModifiedTime10EditField
            app.LastModifiedTime10EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime10EditField.Visible = 'off';
            app.LastModifiedTime10EditField.Position = [542 722 100 22];

            % Create LastModifiedTime11EditField
            app.LastModifiedTime11EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime11EditField.Visible = 'off';
            app.LastModifiedTime11EditField.Position = [542 722 100 22];

            % Create LastModifiedTime12EditField
            app.LastModifiedTime12EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime12EditField.Visible = 'off';
            app.LastModifiedTime12EditField.Position = [542 722 100 22];

            % Create LastModifiedTime13EditField
            app.LastModifiedTime13EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime13EditField.Visible = 'off';
            app.LastModifiedTime13EditField.Position = [562 702 100 22];

            % Create LastModifiedTime14EditField
            app.LastModifiedTime14EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime14EditField.Visible = 'off';
            app.LastModifiedTime14EditField.Position = [542 722 100 22];

            % Create LastModifiedTime15EditField
            app.LastModifiedTime15EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime15EditField.Visible = 'off';
            app.LastModifiedTime15EditField.Position = [542 722 100 22];

            % Create LastModifiedTime16EditField
            app.LastModifiedTime16EditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.LastModifiedTime16EditField.Visible = 'off';
            app.LastModifiedTime16EditField.Position = [542 722 100 22];

            % Create UndoButton
            app.UndoButton = uibutton(app.UIFigureDataCleaningTool, 'push');
            app.UndoButton.ButtonPushedFcn = createCallbackFcn(app, @UndoButtonPushed, true);
            app.UndoButton.BackgroundColor = [0 0 0];
            app.UndoButton.FontWeight = 'bold';
            app.UndoButton.FontColor = [1 1 1];
            app.UndoButton.Position = [1136 747 62 22];
            app.UndoButton.Text = 'Undo';

            % Create ImportDatawithFeaturesinColumnsButton
            app.ImportDatawithFeaturesinColumnsButton = uibutton(app.UIFigureDataCleaningTool, 'push');
            app.ImportDatawithFeaturesinColumnsButton.ButtonPushedFcn = createCallbackFcn(app, @ImportDatawithFeaturesinColumnsButtonPushed, true);
            app.ImportDatawithFeaturesinColumnsButton.BackgroundColor = [0 0 0];
            app.ImportDatawithFeaturesinColumnsButton.FontWeight = 'bold';
            app.ImportDatawithFeaturesinColumnsButton.FontColor = [1 1 1];
            app.ImportDatawithFeaturesinColumnsButton.Position = [7 746 234 22];
            app.ImportDatawithFeaturesinColumnsButton.Text = 'Import Data with Features in Columns';

            % Create ImportDataEditField
            app.ImportDataEditField = uieditfield(app.UIFigureDataCleaningTool, 'text');
            app.ImportDataEditField.FontColor = [0 0 1];
            app.ImportDataEditField.Position = [257 745 787 22];

            % Create HelpButton
            app.HelpButton = uibutton(app.UIFigureDataCleaningTool, 'push');
            app.HelpButton.ButtonPushedFcn = createCallbackFcn(app, @HelpButtonPushed, true);
            app.HelpButton.BackgroundColor = [0 0 0];
            app.HelpButton.FontWeight = 'bold';
            app.HelpButton.FontColor = [1 1 1];
            app.HelpButton.Position = [1210 746 67 23];
            app.HelpButton.Text = 'Help';

            % Create ResizeButton
            app.ResizeButton = uibutton(app.UIFigureDataCleaningTool, 'push');
            app.ResizeButton.ButtonPushedFcn = createCallbackFcn(app, @ResizeButtonPushed, true);
            app.ResizeButton.BackgroundColor = [0 0 0];
            app.ResizeButton.FontWeight = 'bold';
            app.ResizeButton.FontColor = [1 1 1];
            app.ResizeButton.Position = [1060 746 62 22];
            app.ResizeButton.Text = 'Resize';
        end
    end

    methods (Access = public)

        % Construct app
        function app = DataCleaningTool

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigureDataCleaningTool)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigureDataCleaningTool)
        end
    end
end