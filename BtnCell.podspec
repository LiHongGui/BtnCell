Pod::Spec.new do |s|


  s.name         = "BtnCell"
  s.version      = "1.0.1"
  s.summary      = "BtnCell,BtnCell"

  s.description  = <<-DESC
                            BtnCell---BtnCell
                   DESC

  s.homepage     = "https://github.com/LiHongGui/BtnCell.git"
 
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "MichaelLi" => "1045359337@qq.com" }
 
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/LiHongGui/BtnCell.git", :tag => "#{s.version}" }

  s.source_files  = "BtnCell"

  s.requires_arc = true

end
