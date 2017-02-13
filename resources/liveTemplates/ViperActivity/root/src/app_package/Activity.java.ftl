package ${viperPackage}.view.activity;

import android.os.Bundle;
import android.support.annotation.NonNull;
<#if viewState>
import com.hannesdorfmann.mosby.mvp.viewstate.ViewState;</#if>
import ${appPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;<#if passiveMode>
import com.mateuszkoslacz.moviper.iface.presenter.ViperPresenter;<#else>import ${viperPackage}.presenter.${prefix}Presenter;</#if><#if type?contains("DataBinding")>
import ${appPackage}.databinding.Viewholder${prefix}Binding;</#if>
import com.mateuszkoslacz.moviper.base.view.activity.<#if type == "">Viper<#if viewState>ViewState</#if>Activity;<#if viewState>autoinject.<#if vhType?contains("Passive")>passive.</#if></#if>${vhType};<#if vhType?contains("Passive")>
import ${viperPackage}.view.viewstate.${prefix}ViewState;</#if>

public class ${prefix}Activity
        extends Viper${type}<#if viewState>ViewState</#if><#if passiveMode>Passive</#if>Activity
        <${prefix}Contract.View<#if !passiveMode>, 
        ${prefix}Contract.Presenter</#if><#if viewState>,
        ${prefix}ViewState</#if><#if type?contains("DataBinding")>, 
        Activity${prefix}Binding</#if>>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${classToResource(className)});
    }

    @NonNull
    @Override
    public <#if passiveMode>ViperPresenter<${prefix}Contract.View><#else>${prefix}Contract.Presenter</#if> createPresenter() {
        return new ${prefix}Presenter();
    }

    <#if viewState> 
    @NonNull   
    @Override   
    public ViewState<${prefix}Contract.View> createViewState() {   
        return new ${prefix}ViewState();   
    }   
   
    @Override   
    public void onNewViewStateInstance() {   
           
    }</#if>
    <#if type == "Ai" || type == "AiPassive">@Override
    protected void injectViews(View itemView) {
        
    }</#if>
    <#if type != "")>@Override
    protected int getLayoutId() {
        return R.layout.activity_${classToResource(className)};
    }</#if>
}
