Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95C1E24B234
	for <keys@linux.kernel.org>; Fri, 10 Jan 2025 19:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736537425; cv=none; b=t1t4pGEd9WRQ0X2tAoaDjJ8cz1f0XL3mezlLHvPO0np7JQIbz3hHRinitwUvv/wv/xvhzV61qsPhc2NmGvOdrmv8sqyC0XiQtKSPbiUuEIvESLIV6Y465Fgq40en2yBPWXHbvm6h+EzZdqDtNqTC7Cxxuxnv/2in6FGmCej5NXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736537425; c=relaxed/simple;
	bh=O/4qgaJX0Uan0wXGqghjsyJScllYvCLX18L0fwsHpB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OOIVbDme4fUH+jMWHaMkfM7BT8t/65e0u/cAl13/9Vs69HBSp+MYf7APh6Dl5yGx0SLJ6HNYC8GSgiQ1Uo8Hdg5boCFmuv01tRlPQoSiZb8Fe7UV8be3t2PfWYGOjvxzbiIOC/I5Khs5OvTU71Ye++tcZMGpK1vR28AA14Mbd2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Q349A3mG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Q349A3mG"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE3DAC4CED6;
	Fri, 10 Jan 2025 19:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1736537425;
	bh=O/4qgaJX0Uan0wXGqghjsyJScllYvCLX18L0fwsHpB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q349A3mGE9UyhAtnb09cDpQMoAQgGSCbNMY3F7/F4SIZIktsyq7B0QufOF2ihvHjK
	 +GGgOAHLzuR8v66VUPORDljRiguPVnas3sxN/oF152lp3mSg92EE8BL6VzYSWwMS6X
	 cdue29UVla7/F5pdZrzGzGDFHlwAc8UFQZksVwHc=
Date: Fri, 10 Jan 2025 14:30:21 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key (new signatures)
Message-ID: <20250110-agama-of-ultimate-sympathy-ee6d0e@lemur>
References: <6dd2c090-2c22-4488-9e00-8e6a421227eb@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6dd2c090-2c22-4488-9e00-8e6a421227eb@kernel.org>

On Thu, Jan 09, 2025 at 10:47:47AM +0100, Krzysztof Kozlowski wrote:
> Hi,
> 
> Please update my  key with three new signatures from folks already in
> the keyring: keys/1B93437D3B41629B.asc

Updated, thanks.

-K
