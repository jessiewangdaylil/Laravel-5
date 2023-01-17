@foreach ($items as $item)
    <div class="col-lg-3 col-sm-6">
        <div class="single-footer-widget">
            <h4>{{$item->title}}</h4>
            <ul>
              @if (isset($item->children) && count($item->children)> 0)
                @foreach ($item->children as $subitem)
                  <li>{{$subitem->title}}</li>
              @endforeach
              @endif
            </ul>
        </div>
    </div>
@endforeach
