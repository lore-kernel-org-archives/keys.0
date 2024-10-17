Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FEC1DDA18
	for <keys@linux.kernel.org>; Thu, 17 Oct 2024 12:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729168746; cv=none; b=HEhagE6VkL4xO/7M9wL2JyX1pHfcIv7DwSdYiDYtU+mDgnv2rE/ayxY1rNvl/bQwNX0gr3oJWhUzjzQOm+027GFKI3duqe7MKR2bTQYZ8OYMtRArJVy4Wxz9/YFmRXwqeHYMlZVU2MPdJj/D8Bvh+px7i4wAKXfI24pS7lkjQRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729168746; c=relaxed/simple;
	bh=sPCtsj2Lvnk5RrKcQIXlYkjKXL3qroOyOvzG6vevCVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y3jxDXdc+NsMzoFgnfXkbxdP/p9mvHcFy/dQSJfhipIfH9ot0TBFXRMxhZLKM10K0RNueD31k6cEtdRuP8AyNtQGjFzjMQ3rIEJ3/XS/MZdY6+eZSc53QM0hMcCahfsmkcWgwyIO9zxk6KdjUVqxh2zg/Z+lGa6Kada/SdNxLr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=tHOJNmPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="tHOJNmPo"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85E31C4CEC3;
	Thu, 17 Oct 2024 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1729168745;
	bh=sPCtsj2Lvnk5RrKcQIXlYkjKXL3qroOyOvzG6vevCVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tHOJNmPoi2j8HUCFQ3DxRY7MAzKmEkSIize1ctEILLIFrG7XH/uWmpjq/0w+Hlz5N
	 at5FowSXa4UE+kXTIyF7eHKzqWpSwEppC3kWBOjGhHnKumv+Qmsml0gOsA0Jy68+f6
	 1uEsHI4JdXL13GLX6nU+7MqyPePyBJL+PbmOHbzU=
Date: Thu, 17 Oct 2024 08:39:04 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Fan Wu <wufan@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for kernel.org UID
Message-ID: <20241017-futuristic-cockatoo-from-betelgeuse-dd0fc0@lemur>
References: <8f3e51f9-c67b-4d4c-b07d-0440311d3cd3@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8f3e51f9-c67b-4d4c-b07d-0440311d3cd3@kernel.org>

On Wed, Oct 16, 2024 at 10:12:49PM -0700, Fan Wu wrote:
> Hi,
> 
> 
> For pr tag signing purpose, I have added my kernel.org uid and marked it as
> the primary uid to my gpg key. The attached is my updated public key.

Updated, thanks.

-K
