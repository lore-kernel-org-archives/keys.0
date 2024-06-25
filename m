Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034E114EC44
	for <keys@linux.kernel.org>; Tue, 25 Jun 2024 17:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719338002; cv=none; b=k7SW/wKpJEGYDmHfLydLosbFR7+mqwvsSAL3fFi0TUpwH313pXolFG6u6+HevrJUBHG6YXEuMRQQOy29C+XAEL/OjhdGbInsufgKcv9lNAkyMJLFna8+yHe7w885g8z25KN9pOfsQW8H2Uj1nBFyOieAs1TvKo1U+nF40aSgTbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719338002; c=relaxed/simple;
	bh=3V8jElTbT3/IBGGctbyjdwQMgNIIkrvZB06VKWl6MHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eiZVcmi5qdfP35QZRaU6g4r7bHesRbdlz/WdLvWw6zBT2dm9Ht08q1nwxANuTEDl1qjWRQuuO2ZiOEqyv5OuJ7EcVSsKuGq0HKgOf3Cc4TQbhYiWxu8puAqYBAY8L61WH8T6Ir5cpTpdC4gP4BAhzzc+bTl8bNepw3VQwyx6aCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=YBuiSBKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="YBuiSBKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 577F0C32781;
	Tue, 25 Jun 2024 17:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1719338001;
	bh=3V8jElTbT3/IBGGctbyjdwQMgNIIkrvZB06VKWl6MHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YBuiSBKJVj6OKPmMquHO6JuOhoA2SM7wDczqEar9LKRkPA9K/dZWwU13Z2ANRsQWY
	 JV0yqPp0WVNCENtn/xl3XEurM7XHxhYu3bSO2qdYMgsTtdUyv7HSmbNtxgg9GOTB96
	 3R54/gisLSkNzaehtNNbkqDw07/HWInlntJmWJBc=
Date: Tue, 25 Jun 2024 13:53:20 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joel Granados <j.granados@samsung.com>
Cc: keys@linux.kernel.org
Subject: Re: update Joel Granados' key
Message-ID: <20240625-nondescript-benevolent-snake-701bac@lemur>
References: <CGME20240625174819eucas1p18333f76246456867bbcaaedacbc26060@eucas1p1.samsung.com>
 <20240625174814.7ehla3amxfio2l7w@joelS2.panther.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240625174814.7ehla3amxfio2l7w@joelS2.panther.com>

On Tue, Jun 25, 2024 at 07:48:14PM GMT, Joel Granados wrote:
> Hello
> 
> I have added my new joel.granados@kernel.org uid and removed the
> Encryption and Authentication from my signing key.

Updated.

-K
