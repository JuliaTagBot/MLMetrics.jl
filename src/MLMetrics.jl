module MLMetrics

using LearnBase
using MLLabelUtils
using MLLabelUtils: LabelEncoding, BinaryLabelEncoding
import LossFunctions
using LossFunctions: @_dimcheck
using UnicodePlots
using Statistics
using Base.Broadcast

export

    AvgMode,
    LabelEnc,

    # counts
    true_positives,
    true_negatives,
    false_positives, type_1_errors,
    false_negatives, type_2_errors,
    condition_positive,
    condition_negative,
    predicted_positive,
    predicted_negative,
    correctly_classified,
    incorrectly_classified, misclassified,

    # class metrics
    prevalence,
    positive_predictive_value, precision_score,
    negative_predictive_value,
    true_positive_rate, sensitivity, recall,
    false_positive_rate,
    false_negative_rate,
    true_negative_rate, specificity,
    false_discovery_rate,
    false_omission_rate,
    accuracy,
    f_score, f1_score,
    positive_likelihood_ratio,
    negative_likelihood_ratio,
    diagnostic_odds_ratio,
    matthews_corrcoef,

    # roc
    confusions,
    confusions_at_sensitivity,
    roc,
    specificity_at_sensitivity,
    precision_at_sensitivity,
    accuracy_at_sensitivity,
    auc, auc_from_rates,

    # regression
    absolute_error,
    percent_error,
    log_error,
    squared_error,
    squared_log_error,
    absolute_percent_error,
    mean_error,
    mean_absolute_error,
    median_absolute_error,
    mean_percent_error,
    median_percent_error,
    mean_squared_error,
    median_squared_error,
    sum_squared_error,
    mean_squared_log_error,
    mean_absolute_percent_error,
    median_absolute_percent_error,
    symmetric_mean_absolute_percent_error,
    symmetric_median_absolute_percent_error,
    mean_absolute_scaled_error,
    total_variance_score,
    explained_variance_score,
    unexplained_variance_score,
    r2_score

include("classification/averagemode.jl")
include("classification/upstream.jl")
include("classification/docstring_const.jl")
include("classification/counts.jl")
include("classification/fraction.jl")
include("classification/metrics.jl")
include("classification/roc.jl")
include("regression.jl")

end # module MLMetrics
