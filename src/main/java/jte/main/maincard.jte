@param String url
@param gg.jte.Content title
@param gg.jte.Content subtitle = @``
@param gg.jte.Content recommendation = @``
@param gg.jte.Content content

<div class="cell is-flex is-justify-content-start is-align-items-center">
    <div class="card" style="width: 50%; height: 100%">
        <a href="${url}" target="_blank">
            <div class="card-content">
                <p class="title is-4 mb-1">${title}</p>
                @if(!subtitle.isEmptyContent())
                    <p class="title is-6 mb-1">
                        ${subtitle}
                    </p>
                @endif
                @if(!recommendation.isEmptyContent())
                    <p class="subtitle is-6 mb-1">
                        ${recommendation}
                    </p>
                @endif
            </div>
            <div class="card-content">
                ${content}
            </div>
        </a>
    </div>
</div>
