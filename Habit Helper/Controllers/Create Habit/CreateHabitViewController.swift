import UIKit

fileprivate let colors = [#colorLiteral(red: 0.1413740516, green: 0.7993801236, blue: 0.8106815219, alpha: 1), #colorLiteral(red: 0.6976035237, green: 0.2504223585, blue: 0.07817580551, alpha: 1), #colorLiteral(red: 0.3142956793, green: 0.815061748, blue: 0.4724518061, alpha: 1), #colorLiteral(red: 0.9385383725, green: 0.6548688412, blue: 0.3524156809, alpha: 1), #colorLiteral(red: 0.01053562947, green: 0.6355637312, blue: 0.9967387319, alpha: 1), #colorLiteral(red: 0.9667804837, green: 0.2779423594, blue: 0.2843114734, alpha: 1), #colorLiteral(red: 0.2623673081, green: 0.880939424, blue: 0.7340664268, alpha: 1), #colorLiteral(red: 0.09583013505, green: 0.4570071101, blue: 0.9661403298, alpha: 1), #colorLiteral(red: 0.4001787901, green: 0.5588534474, blue: 0.82034868, alpha: 1), #colorLiteral(red: 0.9172300696, green: 0.5038186908, blue: 0.7353674173, alpha: 1),
                          #colorLiteral(red: 0.9566963315, green: 0.657890141, blue: 0.6689068675, alpha: 1), #colorLiteral(red: 0.6848015189, green: 0.8347877264, blue: 0.8847911954, alpha: 1), #colorLiteral(red: 0.7204694152, green: 0.2701157331, blue: 0.9128898978, alpha: 1), #colorLiteral(red: 0.3253745735, green: 0.6728343368, blue: 0.919305563, alpha: 1), #colorLiteral(red: 0.9671966434, green: 0.4166970849, blue: 0.2103305757, alpha: 1), #colorLiteral(red: 0.3149170578, green: 0.7918435931, blue: 0.3550480604, alpha: 1), #colorLiteral(red: 0.3180869818, green: 0.3398532867, blue: 0.4351640046, alpha: 1), #colorLiteral(red: 0.9674569964, green: 0.2595192194, blue: 0.1041855291, alpha: 1), #colorLiteral(red: 0.8309859633, green: 0.1444538832, blue: 0.4801908731, alpha: 1), #colorLiteral(red: 0.3992031515, green: 0.2803818285, blue: 0.9814835191, alpha: 1),
                          #colorLiteral(red: 0.9761657119, green: 0.2625650764, blue: 0.4133892655, alpha: 1), #colorLiteral(red: 0.2565271854, green: 0.4460060596, blue: 0.978428781, alpha: 1), #colorLiteral(red: 0.6012104154, green: 0.7107608914, blue: 0.1618640423, alpha: 1), #colorLiteral(red: 0.6136384606, green: 0.7474214435, blue: 0.8281311393, alpha: 1), #colorLiteral(red: 0.6200806499, green: 0.4578337073, blue: 0.3622382879, alpha: 1), #colorLiteral(red: 0.440326333, green: 0.0559976548, blue: 0.8239255548, alpha: 1), #colorLiteral(red: 0.9508587718, green: 0.4064882398, blue: 0.4148911238, alpha: 1), #colorLiteral(red: 0.4942106605, green: 0.3923170567, blue: 0.3898599148, alpha: 1), #colorLiteral(red: 0.9284912944, green: 0.7541187406, blue: 0.4887948632, alpha: 1), #colorLiteral(red: 0.9926164746, green: 0.2739977539, blue: 0.2625576258, alpha: 1),
                          #colorLiteral(red: 0.01356268022, green: 0.4855374694, blue: 0.7960355282, alpha: 1), #colorLiteral(red: 0.2973278761, green: 0.8471890688, blue: 0.9972526431, alpha: 1), #colorLiteral(red: 0.2119810581, green: 0.7647926211, blue: 0.8891860843, alpha: 1), #colorLiteral(red: 0.09385786206, green: 0.5418064594, blue: 0.0606797412, alpha: 1), #colorLiteral(red: 0.3622140884, green: 0.3563205302, blue: 0.9063383937, alpha: 1), #colorLiteral(red: 0.9206166863, green: 0.8250371814, blue: 0.4590181112, alpha: 1), #colorLiteral(red: 0.7695958018, green: 0.6191036105, blue: 0.9051330686, alpha: 1), #colorLiteral(red: 0.5853427052, green: 0.7922656536, blue: 0.8762975335, alpha: 1), #colorLiteral(red: 0.0318588689, green: 0.1169496998, blue: 0.3100146055, alpha: 1), #colorLiteral(red: 0.5604735017, green: 0.2634269297, blue: 0.7627515197, alpha: 1),
                          #colorLiteral(red: 0.8726696372, green: 0.2864809632, blue: 0.6060975194, alpha: 1), #colorLiteral(red: 0.07058676332, green: 0.9064955115, blue: 0.9429405332, alpha: 1), #colorLiteral(red: 0.9706016183, green: 0.1651349068, blue: 0.1738662124, alpha: 1), #colorLiteral(red: 0, green: 0.1847287714, blue: 1, alpha: 1), #colorLiteral(red: 0.537330389, green: 0.8753286004, blue: 0.5897189975, alpha: 1), #colorLiteral(red: 0.5602921247, green: 0.7639985681, blue: 0.2857352495, alpha: 1), #colorLiteral(red: 0.9883056283, green: 0.6487412453, blue: 0.220005095, alpha: 1), #colorLiteral(red: 0.9339380264, green: 0.6554163694, blue: 0.3162690997, alpha: 1), #colorLiteral(red: 0.274845928, green: 0.4678626657, blue: 0.9612383246, alpha: 1), #colorLiteral(red: 0.8479632139, green: 0.4881990552, blue: 0.5196585059, alpha: 1),
                          #colorLiteral(red: 0.9819234014, green: 0.8247296214, blue: 0.8760488629, alpha: 1), #colorLiteral(red: 0.8825207949, green: 0.6463403106, blue: 0.7961860299, alpha: 1), #colorLiteral(red: 0.797126472, green: 0.6421869397, blue: 0.7896766067, alpha: 1), #colorLiteral(red: 0.8775772452, green: 0.8370720744, blue: 0.8815379143, alpha: 1), #colorLiteral(red: 0.6149950624, green: 0.7578806877, blue: 0.7116753459, alpha: 1), #colorLiteral(red: 0.8887233138, green: 0.8059110641, blue: 0.9559554458, alpha: 1)]

fileprivate let icons: [UIImage] = [#imageLiteral(resourceName: "002-chocolate"), #imageLiteral(resourceName: "003-honey jar"), #imageLiteral(resourceName: "003-juice"), #imageLiteral(resourceName: "003-mushrooms"), #imageLiteral(resourceName: "004-honey"), #imageLiteral(resourceName: "004-milk jar"), #imageLiteral(resourceName: "004-spinach"), #imageLiteral(resourceName: "005-cereals"), #imageLiteral(resourceName: "005-water bottle"), #imageLiteral(resourceName: "006-no sugar"),
                                    #imageLiteral(resourceName: "006-porridge"), #imageLiteral(resourceName: "006-soda"), #imageLiteral(resourceName: "007-hot dog"), #imageLiteral(resourceName: "009-burger"), #imageLiteral(resourceName: "009-sachet"), #imageLiteral(resourceName: "010-carrot"), #imageLiteral(resourceName: "010-french fries"), #imageLiteral(resourceName: "010-plate"), #imageLiteral(resourceName: "011-breakfast"), #imageLiteral(resourceName: "011-salad"),
                                    #imageLiteral(resourceName: "011-sugar cube"), #imageLiteral(resourceName: "012-chocolate bar"), #imageLiteral(resourceName: "013-donut"), #imageLiteral(resourceName: "013-drink water"), #imageLiteral(resourceName: "014-cabbage"), #imageLiteral(resourceName: "018-candy"), #imageLiteral(resourceName: "019-apple"), #imageLiteral(resourceName: "019-mango"), #imageLiteral(resourceName: "020-orange"), #imageLiteral(resourceName: "021-no meat"),
                                    #imageLiteral(resourceName: "023-no meat"), #imageLiteral(resourceName: "042-no fast food"), #imageLiteral(resourceName: "044-mushrooms"), #imageLiteral(resourceName: "045-no food"), #imageLiteral(resourceName: "047-orange juice"), #imageLiteral(resourceName: "048-falafel"), #imageLiteral(resourceName: "049-avocado"), #imageLiteral(resourceName: "050-spring onion"), #imageLiteral(resourceName: "049-ice cream cone"), #imageLiteral(resourceName: "013-coffee cup"),
                                    
                                    #imageLiteral(resourceName: "001-game controller"), #imageLiteral(resourceName: "001-sewing machine"), #imageLiteral(resourceName: "002-binder"), #imageLiteral(resourceName: "002-mandolin"), #imageLiteral(resourceName: "002-paint brush"), #imageLiteral(resourceName: "003-cello"), #imageLiteral(resourceName: "003-chemistry"), #imageLiteral(resourceName: "003-writing"), #imageLiteral(resourceName: "004-headphones"), #imageLiteral(resourceName: "005-microphone"),
                                    #imageLiteral(resourceName: "006-violin"), #imageLiteral(resourceName: "007-stage"), #imageLiteral(resourceName: "008-knitting"), #imageLiteral(resourceName: "009-needle"), #imageLiteral(resourceName: "010-atom"), #imageLiteral(resourceName: "010-audio book"), #imageLiteral(resourceName: "012-tool"), #imageLiteral(resourceName: "013-make up bag"), #imageLiteral(resourceName: "013-vinyl"), #imageLiteral(resourceName: "013-wool ball"),
                                    #imageLiteral(resourceName: "014-music note"), #imageLiteral(resourceName: "014-notebook"), #imageLiteral(resourceName: "014-photo camera"), #imageLiteral(resourceName: "001-harp"), #imageLiteral(resourceName: "015-sewing"), #imageLiteral(resourceName: "016-cinema"), #imageLiteral(resourceName: "016-polo"), #imageLiteral(resourceName: "016-xylophone"), #imageLiteral(resourceName: "018-game console"), #imageLiteral(resourceName: "022-saxophone"),
                                    #imageLiteral(resourceName: "023-origami"), #imageLiteral(resourceName: "032-ballet"), #imageLiteral(resourceName: "035-roller skate"), #imageLiteral(resourceName: "040-drum"), #imageLiteral(resourceName: "044-guitar"), #imageLiteral(resourceName: "045-trumpet"), #imageLiteral(resourceName: "046-clay crafting"), #imageLiteral(resourceName: "047-french horn"), #imageLiteral(resourceName: "009-gaming"), #imageLiteral(resourceName: "001-six pack"),
                                    #imageLiteral(resourceName: "001-windsurf"), #imageLiteral(resourceName: "002-ping pong"), #imageLiteral(resourceName: "002-punching ball"), #imageLiteral(resourceName: "003-biceps"), #imageLiteral(resourceName: "003-karate"), #imageLiteral(resourceName: "003-skateboarding"), #imageLiteral(resourceName: "004-gym gloves"), #imageLiteral(resourceName: "004-roller skate"), #imageLiteral(resourceName: "004-tennis racket"), #imageLiteral(resourceName: "005-soccer"),
                                    #imageLiteral(resourceName: "010-badminton"), #imageLiteral(resourceName: "010-basketball"), #imageLiteral(resourceName: "013-fencing"), #imageLiteral(resourceName: "014-back"), #imageLiteral(resourceName: "015-ectomorph"), #imageLiteral(resourceName: "015-kendo"), #imageLiteral(resourceName: "017-billiard"), #imageLiteral(resourceName: "020-baseball"), #imageLiteral(resourceName: "020-gym"), #imageLiteral(resourceName: "021-training"),
                                    #imageLiteral(resourceName: "022-dumbbell"), #imageLiteral(resourceName: "022-training"), #imageLiteral(resourceName: "025-jogging"), #imageLiteral(resourceName: "026-hockey"), #imageLiteral(resourceName: "027-hand grip"), #imageLiteral(resourceName: "028-static"), #imageLiteral(resourceName: "028-treadmill"), #imageLiteral(resourceName: "029-jumping rope"), #imageLiteral(resourceName: "030-barbell"), #imageLiteral(resourceName: "033-golf"),
                                    #imageLiteral(resourceName: "036-kayak"), #imageLiteral(resourceName: "039-ice skate"), #imageLiteral(resourceName: "039-warming up"), #imageLiteral(resourceName: "040-bicycle"), #imageLiteral(resourceName: "040-yoga"), #imageLiteral(resourceName: "041-motorcycle"), #imageLiteral(resourceName: "044-archery"), #imageLiteral(resourceName: "045-volleyball"), #imageLiteral(resourceName: "048-boxing gloves"),
                                    
                                    #imageLiteral(resourceName: "001-absorb"), #imageLiteral(resourceName: "001-facial treatment"), #imageLiteral(resourceName: "002-hair dye"), #imageLiteral(resourceName: "002-sanitary pad"), #imageLiteral(resourceName: "003-dentist"), #imageLiteral(resourceName: "003-thumb ups"), #imageLiteral(resourceName: "004-medicine"), #imageLiteral(resourceName: "005-holidays"), #imageLiteral(resourceName: "005-tampon"), #imageLiteral(resourceName: "006-facial mask"),
                                    #imageLiteral(resourceName: "006-menstrual cup"), #imageLiteral(resourceName: "006-street sign"), #imageLiteral(resourceName: "008-toothbrush"), #imageLiteral(resourceName: "009-handwash"), #imageLiteral(resourceName: "010-shampoo"), #imageLiteral(resourceName: "011-learning"), #imageLiteral(resourceName: "011-poker"), #imageLiteral(resourceName: "011-secure"), #imageLiteral(resourceName: "011-wash face"), #imageLiteral(resourceName: "011-world globe"),
                                    #imageLiteral(resourceName: "013-island"), #imageLiteral(resourceName: "014-pills"), #imageLiteral(resourceName: "014-tablet"), #imageLiteral(resourceName: "015-beach"), #imageLiteral(resourceName: "015-diet"), #imageLiteral(resourceName: "015(2)-diet"), #imageLiteral(resourceName: "016-mountain"), #imageLiteral(resourceName: "017-cruise ship"), #imageLiteral(resourceName: "017-spa"), #imageLiteral(resourceName: "018-waxing"),
                                    #imageLiteral(resourceName: "020-heart beat"), #imageLiteral(resourceName: "020-vagina"), #imageLiteral(resourceName: "021-weight"), #imageLiteral(resourceName: "022-motivation"), #imageLiteral(resourceName: "025-love your body"), #imageLiteral(resourceName: "026-sunrise"), #imageLiteral(resourceName: "028-shower head"), #imageLiteral(resourceName: "029-weight scale"), #imageLiteral(resourceName: "030-motivation"), #imageLiteral(resourceName: "041-no smoking"),
                                    #imageLiteral(resourceName: "044-tree"), #imageLiteral(resourceName: "050-smartwatch"), #imageLiteral(resourceName: "050-smoking"), #imageLiteral(resourceName: "050-vitamin")]


class CreateHabitViewController: UIViewController {
    
    @IBOutlet weak var habitNameTextField: UITextField!
    @IBOutlet weak var goalsTextField: UITextField!
    @IBOutlet weak var habitTypeSegmControl: UISegmentedControl!
    @IBOutlet weak var colorCollectionView: UICollectionView!
    @IBOutlet weak var iconCollectionView: UICollectionView!
    
    @IBAction func habitStartDate(_ sender: UIDatePicker) {
        
    }
    
    @IBAction func habitEndDate(_ sender: UIDatePicker) {
        
    }
    
    @IBAction func completeButtonPressed(_ sender: UIButton) {
        //TODO: - move to extension
        let viewController = R.storyboard.main.tabBarController()!
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        habitNameTextField.setTextFieldBorderColor()
        goalsTextField.setTextFieldBorderColor()
    }
    
}

extension CreateHabitViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == colorCollectionView {
            return nummberOfColors()
        }
        else {
            return numberOfIcons()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {        if collectionView == colorCollectionView {
        return colorCellFor(indexPath)
    }
    else {
        return iconCellFor(indexPath)
    }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 40, height: 40)
    }
    
    //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //
    //    }
    
}


//MARK: - Color Collection

private extension CreateHabitViewController {
    
    func nummberOfColors() -> Int {
        colors.count
    }
    
    func colorCellFor(_ indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colorCollectionView.dequeueReusableCell(withReuseIdentifier: "ColorCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    //    func didSelectColorAt(_ indexPath: IndexPath) {
    // нажатие на ячейку и добавление цвета привычки
    //    }
    //
}

//MARK: - Icon Collection

private extension CreateHabitViewController {
    
    func numberOfIcons() -> Int {
        icons.count
    }
    
    func iconCellFor(_ indexPath: IndexPath) -> UICollectionViewCell {
        let cell = iconCollectionView.dequeueReusableCell(withReuseIdentifier: "IconCell", for: indexPath) as! IconCell
        cell.icon.image = icons[indexPath.row]
        return cell
    }
    //    func didSelectColorAt(_ indexPath: IndexPath) {
    // нажатие на ячейку и добавление иконки привычки
    //    }
}
