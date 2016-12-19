package ${viperPackage}.view.activity;

import android.os.Bundle;
import android.support.annotation.NonNull;
<#if viewState>
import com.hannesdorfmann.mosby.mvp.viewstate.lce.LceViewState;
import com.hannesdorfmann.mosby.mvp.viewstate.lce.data.RetainingLceViewState;</#if>
import ${appPackage}.R;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.presenter.${prefix}Presenter;
import com.mateuszkoslacz.moviper.base.view.activity.ViperLce<#if viewState>ViewState</#if>Activity;

public class ${prefix}Activity
        extends ViperLce<#if viewState>ViewState</#if>Activity
        <${contentView},
                ${contentObject},
                ${prefix}Contract.View, 
                ${prefix}Contract.Presenter>
        implements ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${classToResource(className)});
    }

    @NonNull
    @Override
    public ${prefix}Contract.Presenter createPresenter() {
        return new ${prefix}Presenter();
    }

    @Override
    protected String getErrorMessage(Throwable e, boolean pullToRefresh) {
        return e.getLocalizedMessage();
    }

    @Override
    public void setData(${contentObject} data) {

    }

    @Override
    public void loadData(boolean pullToRefresh) {

    }

    <#if viewState> 
    @Override
    public ${contentObject} getData() {
        return null;
    }

    @NonNull   
    @Override   
    public LceViewState<${contentObject}, ${prefix}Contract.View> createViewState() {   
        return new RetainingLceViewState<>(); 
    }   
   
    @Override   
    public void onNewViewStateInstance() {   
           
    }</#if> 
}
