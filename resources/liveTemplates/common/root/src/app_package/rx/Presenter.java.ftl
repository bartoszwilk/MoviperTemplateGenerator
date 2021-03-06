package ${viperPackage}.presenter;

import android.support.annotation.NonNull;

import com.mateuszkoslacz.moviper.base.presenter.BaseRxPresenter;
import ${viperPackage}.contract.${prefix}Contract;
import ${viperPackage}.routing.${prefix}Routing;
import ${viperPackage}.interactor.${prefix}Interactor;

public class ${prefix}Presenter
        extends BaseRxPresenter
        <${prefix}Contract.View,
                ${prefix}Contract.Interactor,
                ${prefix}Contract.Routing>
        implements ${prefix}Contract.Presenter {

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
