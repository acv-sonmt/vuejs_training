<p><strong>Date: 2018/07/18</strong></p>
<p>&nbsp;</p>
<p><strong>CODE:</strong></p>
<p><strong>1.ACL Module.</strong></p>
<p><strong>&nbsp;- Required:&nbsp;</strong>Core module</p>
<p><strong>&nbsp;-</strong> Acl management for user, define&nbsp;<strong>policy</strong> for access all of action.</p>
<p><strong>2. Dev Module.</strong></p>
<p><strong>&nbsp;-</strong>&nbsp;As<strong>&nbsp;</strong>helper feature for Developer config project ( refer DETAIL )</p>
<p><strong>3. DAO component</strong></p>
<p><strong>&nbsp;-&nbsp;</strong>As data access model, help excute and standardized output from <strong>Store procedure&nbsp;</strong></p>
<p><strong>4. Entity</strong></p>
<p><strong>&nbsp;</strong>- As entity class, define ouput structure of entity data from Database.</p>
<p><strong>5. New log mode</strong></p>
<p><strong>&nbsp;-&nbsp;</strong>If you change .env&nbsp;LOG_CHANNEL to custom, logs will writed <span style="color: #000000;">by</span> custom policy:</p>
<p>&nbsp; &nbsp; &nbsp;+ Write log with new structure&nbsp; logs/date_folder/module_date.txt</p>
<p>&nbsp; &nbsp; &nbsp;+ Logger for database query excuted if set .env&nbsp;DB_LOG=true</p>
<p>&nbsp; &nbsp; &nbsp;+ All of default event logs still perform as default of Laravel.</p>
<p>&nbsp; &nbsp; &nbsp;+ Coding struct like default of Laravel.</p>
<p><strong>6. Helper</strong></p>
<p><strong>&nbsp; -</strong> Provide some helper for developer.</p>
<p>&nbsp;<strong>7. Console: Generate access token key</strong></p>
<p><strong>&nbsp;&nbsp;</strong>- Ex: php artisan access-token:generate <a href="mailto:your_email@mail.com">your_email@mail.com</a>&nbsp; &nbsp;&nbsp;<br />&nbsp; =&gt; generate a access token key with specific roles, which use to help client access api.</p>
<p>--------------------------------------------------------------------------------------------------------------------------</p>
<h2><span style="color: #000000;"><strong>DETAIL</strong></span></h2>
<p><strong>DEV Module.</strong></p>
<p><strong>Required:</strong>&nbsp;file .env has "DEV_MODE = true"</p>
<p><strong>1. Initialization project</strong><br />&nbsp;- Click button to generate common config (ACL file, Translation file...), import list of action to Database.</p>
<p><strong>2. Translation</strong></p>
<p><strong>&nbsp;- Translation page </strong>management&nbsp; based on languages.</p>
<p>&nbsp;- Add new, Update, Remove text.</p>
<p>&nbsp;- Generate translations file from Database. ( Database to Code)</p>
<p>&nbsp;- Import data from translation file to Database.( Code to Database)</p>
<p><strong>3. ACL - Roles</strong></p>
<p><strong>&nbsp;</strong>- Acl management, change access permission for each user roles.</p>
<p><strong>&nbsp;-&nbsp;</strong>Generate ACL file based on Database to Project code. ( Database to Code)</p>
<p>&nbsp;-&nbsp;Synchronously if has changed code ( if you add new action, module or controller. you should run <strong>synchrously&nbsp;</strong> to update data acl)</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
