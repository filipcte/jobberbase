{include file="header.tpl"}
		
		<div id="content">
			<div id="job-listings"></div><!-- #job-listings -->
			<div id="left-content">
				<h3 class="page-heading">{$translations.companies.title}</h3>
				{section name=tmp loop=$companies}
				<span class="company-tag-{$companies[tmp].tag_height}">
					<a href="{$BASE_URL}{$URL_JOBS_AT_COMPANY}/{$companies[tmp].varname}/">{if $companies[tmp].name}{$companies[tmp].name}{else}{$translations.jobs.company_undisclosed}{/if} ({$companies[tmp].count})</a>
				</span>
				{/section}
				<br /><br />
				<p>
					{$translations.companies.total}: <strong>{$companies_count}</strong> {$translations.companies.companies}
				</p>
			</div><!--#left-content-->
			<div id="sidebar">
				{include file="sidebar.tpl"}
			</div><!-- #sidebar -->
		</div><!-- /content -->

{include file="footer.tpl"}
