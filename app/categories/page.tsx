'use client';
import Link from 'next/link';

export default function CategoriesPage() {
  const categories = [
    { id: 1, name: 'Electronics', image: '/electronics.jpg' },
    { id: 2, name: 'Clothing', image: '/clothing.jpg' },
    { id: 3, name: 'Home & Garden', image: '/home.jpg' },
    { id: 4, name: 'Sports', image: '/sports.jpg' },
    { id: 5, name: 'Books', image: '/books.jpg' },
    { id: 6, name: 'Toys', image: '/toys.jpg' },
  ];

  return (
    <div className="container mx-auto px-4 py-8">
      <h1 className="text-3xl font-bold mb-8">Shop by Category</h1>
      
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        {categories.map((category) => (
          <Link 
            key={category.id} 
            href={`/products?category=${category.id}`}
            className="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-lg transition-shadow"
          >
            <div className="h-48 bg-gray-200 flex items-center justify-center">
              <span className="text-gray-500">Category Image</span>
            </div>
            <div className="p-4">
              <h2 className="text-xl font-semibold">{category.name}</h2>
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}