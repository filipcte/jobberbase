{include file="includes/header.tpl"}

<div id="job-listings">
    <div class="page-header">
        <h2>
            {$translations.jobscity.jobs_in_other_cities}
        </h2>
    </div>

    {if $jobs}
        {include file="includes/filter.tpl" current_url="{$BASE_URL}jobs-in-other-cities"}
        {include file="includes/jobs-list.tpl"}
    {else}
        <div class="alert alert-info">
            <p>{$translations.jobscity.no_jobs_in_other_cities}</p>
        </div>
        {if $smarty.const.ENABLE_NEW_JOBS}
            <p><a href="{$BASE_URL}post/" class="btn btn-primary" title="{$translations.footer.new_job_title}">{$translations.footer.new_job}</a></p>
        {/if}
    {/if}
</div>

{include file="includes/footer.tpl"}