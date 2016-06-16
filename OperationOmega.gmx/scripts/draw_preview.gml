//draw_preview(background, scrolling);
var _backwidth, _backscroll, _background;
_background = argument0;
_backscroll = argument1;
_backwidth = background_get_width(_background);

_backscroll = _backscroll mod _backwidth;

if(_backscroll > _backwidth-284)
{
    draw_background_part_ext(_background, _backscroll, 0, _backwidth-_backscroll, 170, 484, 346, 1, 1, c_white, image_alpha);
    draw_background_part_ext(_background, 0, 0, 284-(_backwidth-_backscroll), 170, 484+_backwidth-_backscroll, 346, 1, 1, c_white, image_alpha);
}
else
    draw_background_part_ext(_background, _backscroll, 0, 284, 170, 484, 346, 1, 1, c_white, image_alpha);
