package ${viperPackage}.<#if packagesPerUseCase>${classToResource(className)}<#else>presenter</#if>;

import android.support.annotation.NonNull;

import com.mateuszkoslacz.moviper.base.presenter.BasePresenter;
<#if !packagesPerUseCase>import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;
</#if>
public class ${prefix}Presenter
        extends BasePresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>
        implements ${prefix}Contract.Presenter,
        ${prefix}Contract.PresenterForInteractor,
        ${prefix}Contract.PresenterForRouting {

    @NonNull
    @Override
    public ${prefix}Contract.Routing createRouting() {
        return new ${prefix}Routing();
    }

    @NonNull
    @Override
    public ${prefix}Contract.Interactor createInteractor() {
        return new ${prefix}Interactor();
    }
}
