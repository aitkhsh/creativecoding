# creativecoding

def setup
  createCanvas(800, 800)
  background("#f9ede9")
  frameRate(10)
  # 保存設定
  @button = createButton("Save")
  @button.mousePressed {|x| saveCanvas("sketch_#{Time.now.strftime('%Y%m%d_%H%M%S%L')}", "png")}
end

def draw
  # noLoop # 繰り返さない
  background(random(1,200), random(1,200), random(1,200), 100) # レインボー設定
  draw_size = 10 # 円の直径
  stroke(random(0,500), random(0,500), random(0,500)) # 枠線の色 レインボー設定
  noFill # 塗りつぶさない
  (0..height).step(draw_size) do |y| # height でキャンパスの高さが取得できる
    (0..width).step(draw_size) do |x| # width でキャンパスの幅が取得できる
      ellipse(rand(0..width), rand(y - draw_size / 2), draw_size)
      ellipse(rand(x + draw_size / 2), rand(0..height), draw_size)
    end
  end
end

# 参考コード
# def setup
#   createCanvas(800, 800)
#   background("#f9ede9")
# end

# def draw
#   noLoop
#   draw_size = 100
#   stroke("#cc512e")
#   noFill
#   (0..height).step(draw_size) do |y| # height でキャンパスの高さが取得できる
#     (0..width).step(draw_size) do |x| # width でキャンパスの幅が取得できる
#       ellipse(x, y - draw_size / 2, draw_size)
#       ellipse(x + draw_size / 2, y, draw_size)
#     end
#   end
# end