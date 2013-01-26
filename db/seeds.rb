# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'rubygems'
# require 'faker'
# require 'factory_girl_rails'
# 5.times do |i|	#creating doctor automatically creates hospital and depeartments
# 	d = FactoryGirl.create(:doctor)

# 	dep1 = d.department
# 	hos1 = d.hospitals.first
# 	hos2 = d.hospitals.last
# 	[d, dep1, hos1, hos2].each do |entry|
# 		entry.name = entry.class.to_s+" - #{i+1}"
# 		entry.save
# 	end
# end
dep1 = Department.create(:name => "Opthalmology", 
				:description => "Ophthalmology is the branch of medicine that deals with the anatomy, physiology and diseases of the eye. An ophthalmologist is a specialist in medical and surgical eye problems. Since ophthalmologists perform operations on eyes, they are considered to be both surgical and medical specialists."
				)
dep2 = Department.create(:name => "Cardiology", 
				:description => "Cardiology is a medical specialty dealing with disorders of the heart (specifically the human heart). The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease and electrophysiology. Physicians who specialize in this field of medicine are called cardiologists. Physicians who specialize in cardiac surgery are called cardiac surgeons."
				)
dep3 = Department.create(:name => "Ear nose and throat", 
				:description => "Otolaryngology or ENT (ear, nose, and throat) is the branch of medicine and surgery that specializes in the diagnosis and treatment of disorders of the head and neck. It is the oldest medical practice in the United States and nearly 50% of all office visits pertain to the ear, nose, and throat."
				)
dep4 = Department.create(:name => "Gastroenterology", 
				:description => "Gastroenterology (MeSH heading)[1] is a branch of medicine focused on the digestive system and its disorders. The name is a combination of three Ancient Greek words gaster (gen.: gastros) (stomach), enteron (intestine), and logos (reason). In the United States, Gastroenterology is an Internal Medicine Subspecialty certified by the American Board of Internal Medicine (ABIM) and the American Osteopathic Board of Internal Medicine (AOBIM).Diseases affecting the gastrointestinal tract, which includes the organs from mouth to anus, along the alimentary canal, are the focus of this specialty. Physicians practicing in this field of medicine are called gastroenterologists"
				)
dep5 = Department.create(:name => "General surgery", 
				:description => "General surgery is a surgical specialty that focuses on abdominal contents including esophagus, stomach, small bowel, colon, liver, pancreas, gallbladder and bile ducts, and often the thyroid gland (depending on the availability of head and neck surgery specialists). They also deal with diseases involving the skin, breast, soft tissue, and hernias."
				)
dep6 = Department.create(:name => "Gynaecology", 
				:description => "Gynaecology or gynecology[1] is the medical practice dealing with the health of the female reproductive system (uterus, vagina, and ovaries). Literally, outside medicine, it means \"the science of women\". Its counterpart is andrology, which deals with medical issues specific to the male reproductive system. Almost all modern gynaecologists are also obstetricians (see obstetrics and gynaecology). In many areas, the specialties of gynaecology and obstetrics overlap."
				)
dep7 = Department.create(:name => "Neurology", 
				:description => "Neurology is a medical specialty dealing with disorders of the nervous system. To be specific, neurology deals with the diagnosis and treatment of all categories of disease involving the central, peripheral, and autonomic nervous systems, including their coverings, blood vessels, and all effector tissue, such as muscle."
				)
dep8 = Department.create(:name => "Oncology", 
				:description => "Oncology (from the Ancient Greek onkos, meaning bulk, mass, or tumor, and the suffix -logy, meaning \"study of\") is a branch of medicine that deals with cancer. A medical professional who practices oncology is an oncologist."
				)
dep9 = Department.create(:name => "Orthopaedics", 
				:description => 'Orthopedic surgery or orthopedics (also spelled orthopaedic surgery and orthopaedics in British English) is the branch of surgery concerned with conditions involving the musculoskeletal system. Orthopedic surgeons use both surgical and nonsurgical means to treat musculoskeletal trauma, sports injuries, degenerative diseases, infections, tumors, and congenital disorders.'
				)
dep10 = Department.create(:name => "Urology", 
				:description => 'Urology (from Greek -uron, "urine" and -logia "study of") is the medical and surgical specialty that focuses on the urinary tracts of males and females, and on the reproductive system of males. Medical professionals specializing in the field of urology are called urologists and are trained to diagnose, treat, and manage patients with urological disorders. The organs covered by urology include the kidneys, adrenal glands, ureters, urinary bladder, urethra, and the male reproductive organs (testes, epididymis, vas deferens, seminal vesicles, prostate and penis).'
				)
dep11 = Department.create(:name => "Dental", 
				:description => 'Dentistry is the branch of medicine that is involved in the study, diagnosis, prevention, and treatment of diseases, disorders and conditions of the oral cavity, the maxillofacial area and the adjacent and associated structures, and their impact on the human body.[1] To the layman, dentistry tends to be perceived as being focused primarily on human teeth, though it is not limited strictly to this. Dentistry is widely considered necessary for complete overall health. Doctors who practice dentistry are known as dentists. The dentist\'s supporting team - which includes dental assistants, dental hygienists, dental technicians, and dental therapists aids in providing oral health services. '
				)
dep12 = Department.create(:name => "Plastic surgery", 
				:description => 'Plastic surgery is a medical specialty concerned with the correction or restoration of form and function. Though cosmetic or aesthetic surgery is the best-known kind of plastic surgery, most plastic surgery is not cosmetic[2]; plastic surgery includes many types of reconstructive surgery, hand surgery, microsurgery, and the treatment of burns.'
				)
dep13 = Department.create(:name => "Endocrinology", 
				:description => 'Endocrinology is a branch of biology and medicine dealing with the endocrine system, its diseases, and its specific secretions called hormones, the integration of developmental events proliferation, growth, and differentiation (including histogenesis and organogenesis) and the coordination of metabolism, respiration, excretion, movement, reproduction, and sensory perception depend on chemical cues, substances synthesized and secreted by specialized cells. Endocrinology is concerned with study of the biosynthesis, storage, chemistry, biochemical and physiological function of hormones and with the cells of the endocrine glands and tissues that secrete them.'
				)
dep14 = Department.create(:name => "Nephrology", 
				:description => 'Nephrology (-nephros, "kidney", combined with the suffix -logy, "the study of") is a specialty of medicine and pediatrics that concerns itself with the study of normal kidney function, kidney problems, the treatment of kidney problems and renal replacement therapy (dialysis and kidney transplantation). Systemic conditions that affect the kidneys (such as diabetes and autoimmune disease) and systemic problems that occur as a result of kidney problems (such as renal osteodystrophy and hypertension) are also studied in nephrology. A physician who has undertaken additional training to become an expert in nephrology may call themselves a nephrologist or renal physician.'
				)
dep15 = Department.create(:name => "Rheumatology", 
				:description => 'Rheumatology (Greek rheuma, river) is a sub-specialty in internal medicine and pediatrics, devoted to diagnosis and therapy of rheumatic diseases. Clinicians who specialize in rheumatology are called rheumatologists. Rheumatologists deal mainly with clinical problems involving joints, soft tissues, autoimmune diseases, vasculitis, and heritable connective tissue disorders.'
				)
dep16 = Department.create(:name => "Psychiatry", 
				:description => 'Psychiatry is the medical specialty devoted to the study, diagnosis, treatment, and prevention, of mental disorders. These include various affective, behavioural, cognitive and perceptual abnormalities. The term was first coined by the German physician Johann Christian Reil in 1808, and literally means the \'medical treatment of the soul\'. A medical doctor specializing in psychiatry is a psychiatrist.'
				)



hos1 = Hospital.create({
	"name"=>"Bir Hospital", 
	"address"=>"Ratnapark", 
	"city"=>"Kathmandu", 
	"phone1"=>"4221119", 
	"phone2"=>"", 
	"description"=>'Bir Hospital is the oldest and one of the busiest hospitals in Nepal. It was established in July 1889 by Bir Shamsher Jang Bahadur Rana. It is located at the center of Kathmandu city. The hospital is run by the National Academy of Medical Sciences, a government agency since 2003. The hospital provides medical and surgical treatments to people from all across the country. Many patients from the rural areas come to this hospital to get free treatment. It current has a capacity of 535 beds. Some of the county\'s top doctors work in this hospital. Every year it produces trained post graduates in different subjects of clinical medicine e.g. general surgery, internal medicine, orthopaedic surgery, pathology etc. It has become an Internship centre for students who had passed MBBS from China and Russia and other parts of the world. Hundreds of nurses of different levels get nursing training in this hospital.'
})
hos2 = Hospital.create({
	"name"=>"Tribhuwan University Teaching Hospital", 
	"address"=>"Mahrajgunj", 
	"city"=>"Kathmandu", 
	"phone1"=>"412303", 
	"phone2"=>"412505", 
	"description"=>'According to the objectives of IOM, to facilitate the education, research and health care, T. U. Teaching Hospital was established in 1983 with the generous support of Japanese Government. . It was graciously inaugurated by His Majesty King Birendra Bir Bikram Shah Dev in February, 1986. T. U. Teaching Hospital is an integral part of the Institute of Medicine of Trbhuvan University. It performs two distinct functions. As a teaching hospital, it provides practical field for the academic training programs (basic, graduate and postgraduate) of the Institute and, as a national hospital, renders medical care and services to those who need them. Besides, it conducts medical research projects and provids a major impetus to Biomedical and Health Sciences Research in Nepal. The establishment of the Teaching Hospital was a landmark in the evolution of medical education in Nepal. '
})
hos3 = Hospital.create({
	"name"=>"Patan Hospital", 
	"address"=>"Lagankhel", 
	"city"=>"Lalitpur", 
	"phone1"=>"5522295", 
	"phone2"=>"", 
	"description"=>'The story of Patan Hospital is a continuation of a story that began in 1956 in the palace called Shanta Bhawan. However, Patan Hospital also marked a beginning of a new era by replacing the old palace in 1982. Today Patan Hospital has its own identities among large governmental and non-governmental hospitals in Nepal, known for its compassionate care, the high values and ethos, trusted by people, rich and poor. Though Patan Hospital during its inception was projected and perceived more as a district hospital, over the years it has emerged as a major busy acute care city hospital providing both primary care as well as specialty services both to the local urbanites as well to patients coming from diverse geographic areas within Nepal. More than 300,000 people come to this hospital every year for healthcare service and treatment. Patan Hospital now has 320 beds which has increased to 450, after the completition of our maternity ward building construction. Apart from clinical services, Patan Hospital\'s community oriented program, health education classes and rural networking have helped thousands of Nepalese to live a safer and healthier lives'
})
hos4 = Hospital.create({
	"name"=>"Mental Hospital", 
	"address"=>"Lagankhel", 
	"city"=>"Lalitpur", 
	"phone1"=>"5521612", 
	"phone2"=>"5530000", 
	"description"=>'Mental health services in Nepal remained unknown till 1961 AD. First psychiatric OPD services were started in 1961 in Bir hospital,Kathmandu by the first Nepalese Psychiatrist Dr. Bishnu Prasad Sharma.A five-bedded in-patients unit was established in the same hospital in 1965, which was further extended to 12 beds in 1971.'
})
hos5 = Hospital.create({
	"name"=>"Kantipur Hospital", 
	"address"=>"Subidhanagar, Tinkune", 
	"city"=>"Kathmandu", 
	"phone1"=>"4111627", 
	"phone2"=>"4111858", 
	"description"=>'The Kantipur Hospital Private Limited was established in 2054 by doctors and personnel of non-medical sector. In 2055, Kantipur Saving Credit Co-operative limited started to join hand in its further development. In initial stage, this hospital was located at Kathmandu metropolitan city Ward No. Kalanki. As the Kantipur Saving & Credit Co-operative became a joint venture partner, this hospital shifted from Kalanki to Kathmandu metropolitan city Ward No 34 Baneshwor.'
})
hos6 = Hospital.create({
	"name"=>"Om Hospital and Research Center", 
	"address"=>"Chabahil", 
	"city"=>"Kathmandu", 
	"phone1"=>"4482484", 
	"phone2"=>"", 
	"description"=>'In 1990, Om Hospital & Research Centre (P.) Ltd began its relentless journey by the name, Om Nursing Home in providing world class health care service at affordable cost. It was a pioneering attempt by a group of dedicated professionals to make an impact on the health sector of Nepal. Their dedicated and excellent service has enabled them to turn a nursing home into a 150 bed hospital, which provides diagnostic, preventive and curative services. The role of this hospital is to provide modern clinical services at competitive rates, training health professionals and to provide research information to the medical world. Keeping in the concept of having everything under one roof not only saves times but also provides confidence to patients by ensuring that the patients acquire reliable diagnosis and health care of the highest quality'
})
hos7 = Hospital.create({
	"name"=>"B & B Hospital", 
	"address"=>"Gwarko", 
	"city"=>"Lalitpur", 
	"phone1"=>"5531933", 
	"phone2"=>"5544800", 
	"description"=>'Established on 6 Nov 1997, secure and reliable infrastructure, armed with uninterrupted water supply, electricity supply and other basic utilities. The main building has 250 rooms, 100,000 sq ft carpet area. B&B Hospital offer services of 250 inpatient beds with variety of amenities, a highly-equipped emergency department, an outpatient department with specialized clinics, a clinical laboratory with latest technical capacities, a diagnostic radiology department equipped with computerized radiography (CR), spiral computerized tomography (CT Scan) and 0.35 Tesla magnetic resonance imaging (MRI), 10 modern operating rooms, connected to the lecture rooms with a closed-circuit television system, all aiming to provide high quality education and teaching to the students'
})
hos8 = Hospital.create({
	"name"=>"HAMS (Hospital For Advanced Medicine And Surgery)", 
	"address"=>"Buddhanagar", 
	"city"=>"Kathmandu", 
	"phone1"=>"4786111", 
	"phone2"=>"", 
	"description"=>'HAMS Hospital is a private, full-fledged multi-specialty hospital with 50 beds of which 10 are ICU beds. The number of consultants has increased to around 25 with 14 fully trained resident doctors. Hospital is having college of nursing, providing PCL Nursing degree with annual admission of 40 students. HAMSHospitalare having all qualified nurses & some of them are having additional qualification & specialization. Our strength comes from our eminent panel of medical professionals, many of whom are leaders in their respective fields along with the highest level of diagnostic services with the latest state of the art equipment. The Hospital is dedicated to be the best in patient care and customer service and we are working hard to be your hospital of choice, providing the highest quality healthcare services with a caring human touch.'
})
hos9 = Hospital.create({
	"name"=>"Sukraraj Tropical and Infectious Disease Hospital", 
	"address"=>"Teku", 
	"city"=>"Kathmandu", 
	"phone1"=>"4253395", 
	"phone2"=>"", 
	"description"=>'Nepal is located in South Asia in between China and India. The country is one of the most famous destination for travel for its natural beauty and world famous Himalay\s. Health care facilities are provided mainly by governmental sector. Sukraraj Tropical and Infectious Disease Hospital (STIDH) is the only Infectious & Tropical Disease Hospital established in 1933 in Kathmandu , Nepal. This is the national referral hospital with the capacity 100 beds inpatient service. It receives patients from all over the country and referred patients from the Valley hospitals. It provides training to Undergraduate and Postgraduate medical students . Students from different countries undergo training in Infectious and Tropical Diseases.'
})
hos10 = Hospital.create({
	"name"=>"Kanti Children's Hospital", 
	"address"=>"", 
	"city"=>"Kathmandu", 
	"phone1"=>"4411140", 
	"phone2"=>"", 
	"description"=>'A history of forty-five years of devotion to nation Kanti Children\'s Hospital (KCH) was established in the year 1963 AD as a general hospital. It was converted into Kanti Children\'s Hospital in the year 1970. This hospital was founded under former Soviet aid. Also in the year 1970, 100 beds were added. It is now a 300-bed hospital and it is planned to upgrade into 500-bed hospital in the near future. Civil construction work for additional 200 beds is near completion. KCH is managed by Kanti Children\'s Hospital Development Board (Board), which is an autonomous corporate body under the Ministry of Health (MOH), Government of Nepal (GON). Members of the board are drawn from civil society and hospital management itself. The Board is heavily depended on GON for human, material and financial resources. But plans are afoot toward making KCH an independent entity in the future when it achieves sustainability. KCH is the only children\'s hospital of the nation. Poor patients receive free medical treatments at KCH. The Board has to abide by the GON guidelines to provide free medical treatments for poor patients coming from the outlying districts of Nepal. The policy of the Board is to upgrade the KCH facilities, add more manpower and technologies to better the quality of delivery of child health care to cater the growing demand of the day. Foreign assistance has been instrumental in the growth and development of KCH. During 1970-1998 KCH received aids from German-Nepal Assistance Association. A number of specialized visiting doctors from Britain brought expertise in the area of anesthesiology and surgery. Between 1986 and 1993, the Japan government became a significant donor and patron of KCH. In 1986, late Mr. Ryutaro Hasimoto, then prime minister of Japan procured a major Japanese Grant Aid which enabled to replace all the out of date equipment with the new ones. In 1993, second phase of Japanese grant benefited KCH in terms of buildings and other facilities. This grant aid improved surgical and medical departments of the hospital. Assistance of Hashimoto Foundation is still continuing. The Board expresses immense gratitude to all organizations and individuals who join us in the growth and development of KCH and wish that such cooperation be continued. '
})
hos11 = Hospital.create({
	"name"=>"Paropakar Maternity and Women's Hospital", 
	"address"=>"Thapathali", 
	"city"=>"Kathmandu", 
	"phone1"=>"4260405", 
	"phone2"=>"", 
	"description"=>' Paropakar Maternity and \'s Hospital, Thapathali, Kathmandu, popularly known as PRASUTI GRIHA was established on August 1959 with the initiative taken by paropakar (a non-governmental community based organization), Late king Mahendra (Then HRH Crown Prince) in memory of Late Indra Rajya Laxmi Devi Shah (Then HRH Crown Princess), who died due to pregnancy related causes, The hospital was renamed as "Paropakar Maternity &  s Hospital since 2nd December 2007 (16th Mangsir 2064) in place of \'Paropakar Shree Panch Indra Rajya Laxmi Maternity Hospital. It is situated on the north bank of Bagmati river, near Thapathali Bridge, in its own spacious land.'
})


# "Opthalmology", "Cardiology", "Ear nose and throat", "Gastroenterology", "General surgery",
# "Gynaecology", "Neurology", "Oncology", "Orthopaedics", "Urology", 
# "Dental", "Plastic surgery", "Endocrinology", "Nephrology", "Rheumatology"
# "Psychiatry"


# "Bir Hospital", "Tribhuwan University Teaching Hospital", "Patan Hospital", "Mental Hospital", 
# "Kantipur Hospital", "Om Hospital and Research Center", "B & B Hospital", "HAMS (Hospital For Advanced Medicine And Surgery)",
# "Sukraraj Tropical and Infectious Disease Hospital", "Kanti Children's Hospital", "Paropakar Maternity and Women's Hospital


hos1.update_attributes(:department_ids => [dep1.id, dep2.id, dep3.id, dep4.id, dep5.id, dep6.id, dep7.id, dep8.id, dep9.id, dep10.id, dep11.id, dep12.id, dep13.id, dep14.id, dep15.id])
hos2.update_attributes(:department_ids => [dep1.id, dep2.id, dep3.id, dep4.id, dep5.id, dep6.id, dep7.id, dep8.id, dep9.id, dep10.id, dep11.id,           dep13.id, dep14.id, dep15.id])
hos3.update_attributes(:department_ids => [                                    dep5.id, dep6.id, dep7.id, dep8.id, dep9.id, dep10.id, dep11.id, dep12.id, dep13.id, dep14.id, dep15.id])
hos4.update_attributes(:department_ids => [dep16.id])

FeaturedHospital.create(:hospital_id => hos1.id)
FeaturedHospital.create(:hospital_id => hos2.id)
FeaturedHospital.create(:hospital_id => hos3.id)
