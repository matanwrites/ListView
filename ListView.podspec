Pod::Spec.new do |s|

  s.name         = "ListView"
  s.version      = "0.0.2"
  s.summary      = "ListView based on UICollectionView"

  s.description  = <<-DESC
  a ListView with a simple API to stack different kind of cells vertically
                   DESC

  s.homepage     = "https://github.com/taiyungo/ListView"
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = "sintaiyuan"

   s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/taiyungo/ListView.git" }


  s.source_files  = "ListView", "ListView/**/*.{h,m,swift}"
  s.exclude_files = "ListView/Exclude"


end
