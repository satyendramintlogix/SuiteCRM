{*
/**
*
* SugarCRM Community Edition is a customer relationship management program developed by
* SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
*
* SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
* Copyright (C) 2011 - 2016 SalesAgility Ltd.
*
* This program is free software; you can redistribute it and/or modify it under
* the terms of the GNU Affero General Public License version 3 as published by the
* Free Software Foundation with the addition of the following permission added
* to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
* IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
* OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
* details.
*
* You should have received a copy of the GNU Affero General Public License along with
* this program; if not, see http://www.gnu.org/licenses or write to the Free
* Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
* 02110-1301 USA.
*
* You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
* SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
*
* The interactive user interfaces in modified source and object code versions
* of this program must display Appropriate Legal Notices, as required under
* Section 5 of the GNU Affero General Public License version 3.
*
* In accordance with Section 7(b) of the GNU Affero General Public License version 3,
* these Appropriate Legal Notices must retain the display of the "Powered by
* SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
* reasonably feasible for  technical reasons, the Appropriate Legal Notices must
* display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
*/
*}
<ul class="clickMenu selectmenu searchLink SugarActionMenu listViewLinkButton listViewLinkButton_{$action_menu_location}">
    <li class="sugar_action_button">
        <a href="javascript:void(0)" class="glyphicon glyphicon-filter parent-dropdown-handler" onclick="listViewSearchIcon.toggleSearchDialog('latest'); $('#searchDialog .nav-tabs .active').removeClass('active'); $('#searchDialog .nav-tabs li').first().addClass('active'); $('#searchDialog').modal('toggle');"></a>
    </li>
</ul>
<ul class="searchAppliedAlert hidden clickMenu selectmenu searchAppliedAlertLink SugarActionMenu listViewLinkButton listViewLinkButton_{$action_menu_location}">
    <li class="sugar_action_button desktopOnly">
        <a href="javascript:void(0)" class="glyphicon glyphicon-list-alt clearSearchIcon parent-dropdown-handler" onclick="SUGAR.savedViews.shortcutDropdown('_none', '{$savedSearchData.module}');"></a>
        <a href="javascript:void(0)" class="glyphicon glyphicon-remove" onclick="SUGAR.savedViews.shortcutDropdown('_none', '{$savedSearchData.module}');">&Cross;</a>
    </li>
    <li class="sugar_action_button mobileOnly">
        <a href="javascript:void(0)" class="glyphicon glyphicon-list-alt clearSearchIcon parent-dropdown-handler" onclick=""></a>
        <a href="javascript:void(0)" class="glyphicon glyphicon-remove" onclick="SUGAR.savedViews.shortcutDropdown('_none', '{$savedSearchData.module}');"></a>
    </li>
</ul>

{if $savedSearchData.hasOptions}
    <ul class="action-link action-link-{$action_menu_location} clickMenu selectActions fancymenu show listViewLinkButton listViewLinkButton_{$action_menu_location}">
        <li class="sugar_action_button">
            <a href="javascript:void(0)" class="parent-dropdown-handler" onclick="return false;">
                <label class="selected-actions-label">{$APP.LBL_SAVED_SEARCH_SHORTCUT}</label>
            </a>
            <ul class="subnav">
                <li><a href="javascript:void(0)" class="parent-dropdown-action-handler" onclick="SUGAR.savedViews.shortcutDropdown('_none', '{$savedSearchData.module}');">{$APP.LBL_NONE}</a></li>
                {foreach from=$savedSearchData.options key=id item=option}
                    <li><a href="javascript:void(0)" class="parent-dropdown-action-handler"{if $id!=$savedSearchData.selected} onclick="SUGAR.savedViews.shortcutDropdown('{$id}', '{$savedSearchData.module}');"{/if}>{$option}{if $id==$savedSearchData.selected}&nbsp;&#10004{/if}</a></li>
                {/foreach}
            </ul>
            <span></span>
        </li>
    </ul>
{/if}