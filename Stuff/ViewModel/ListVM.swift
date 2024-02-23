//
//  ListVM.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import Foundation

class ListVM: ObservableObject{
    
    @Published var baseData: BaseModel?
    
    init() {
        fetchData()
    }
    
    private func fetchData(){
        baseData = .sampleData
    }
}

struct BaseModel{
    var images: [ImageModel]
    var category: [CategoryList]
    var combineDat: [CombineSection]
}
extension BaseModel{
    struct ImageModel {
        var image: String
    }
    struct CategoryList{
        var name: String
        var image: String
    }
    struct SectionCategory{
        var title: String
        var subTitle: String
        var address: String
        var image: String
        var other: String
        var isOffer: Bool
    }
    struct VideoDataModel{
        var details: String
        var image: String
    }
    struct CombineSection{
        var section: [SectionCategory]
        var videos: [VideoDataModel]
    }
}
extension BaseModel{
    static let imageModel = [
        ImageModel(image: "road"),
        ImageModel(image: "sea"),
        ImageModel(image: "mountain"),
        ImageModel(image: "city"),
        ImageModel(image: "bridge")]
    static let categories = [CategoryList(name: "QACategory", image: "road"),
                             CategoryList(name: "Telephoni", image: "road"),
                             CategoryList(name: "Datori", image: "road"),
                             CategoryList(name: "Videopalliqi", image: "road"),
                             CategoryList(name: "Videopalliqi", image: "road"),
                             CategoryList(name: "Gaming", image: "road")]
    static let sectionC = [
    SectionCategory(title: "€ 3", subTitle: "Gyhh", address: "Hakim Ajmal Khan Road, churuch", image: "road", other: "21 dienas prims", isOffer: false),
    SectionCategory(title: "Atdodu", subTitle: "Babsns", address: "Hakim Ajmal Khan Road, churuch", image: "sea", other: "21 dienas prims", isOffer: true),
    SectionCategory(title: "€ 3", subTitle: "Gyhh", address: "Hakim Ajmal Khan Road, churuch", image: "mountain", other: "21 dienas prims", isOffer: false),
    SectionCategory(title: "Atdodu", subTitle: "Babsns", address: "Hakim Ajmal Khan Road, churuch", image: "city", other: "21 dienas prims", isOffer: true)
    ]
    static let videoData = [
        VideoDataModel(details: "Pandu", image: "road"),
        VideoDataModel(details: "Pandu", image: "sea"),
        VideoDataModel(details: "Pandu", image: "mountain"),
        VideoDataModel(details: "Pandu", image: "road"),
        VideoDataModel(details: "Pandu", image: "city")]
    static let combine = CombineSection(section: sectionC, videos: videoData)
    static var sampleData = BaseModel(images: imageModel, category: categories, combineDat: [combine,combine,combine,combine,combine])
}
