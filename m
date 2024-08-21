Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189B71C683
	for <keys@linux.kernel.org>; Wed, 21 Aug 2024 15:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724253423; cv=none; b=V/323iiLRyftbz14baIgMbTd6OKVfHuF4t31sVCPEUfqgkx04IefRmQ3+q6zW8tC4ZdVQ0dMwoWQ5OYveX86e9lvPrFDLFqpMYLRc+/7MIHkKhxj1FiDUPHANb0ifnJAiE+jaD3KWwJGIsrk6wLuld8DwQ7t4oGIy7I9vWIO704=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724253423; c=relaxed/simple;
	bh=RA9FrS8jFFu9OfCtzwDH3MrxxfjBmE8czMxvJGWn0y0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ujS3LF5fmLutPIEH8nwOMZMk+fddtS32xeTQ8oE/W1P6CxRmrobtp5bGjHVQvRMWMjbT7hKv83pt2vVvF4mMMwToFXmDlm/oe6/vNMS3UzNL/v1ppbfYf6Aw6zqyHVnV9pxwGqXMrEnlZYk5DHg3yRGKNWpV9q4hgnQwBSPuZoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=sj4HSzjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="sj4HSzjK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6379BC32786;
	Wed, 21 Aug 2024 15:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1724253422;
	bh=RA9FrS8jFFu9OfCtzwDH3MrxxfjBmE8czMxvJGWn0y0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sj4HSzjKm0hZ1Z1iiWYdYInPmfTMyyYj/VdRq5AP9t4RKPxdjdu/YJ1ky9Cmqqyja
	 r4stg5/Aq4yPY05UjJQHjm/RHBtdnklH/HlySkCXiO5hn8yvsXFTtzMKp1x9blQCEu
	 agnpC84F4MjZFby6ukM4/j5JxaxXNZBFDkNl4LBg=
Date: Wed, 21 Aug 2024 11:17:01 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: keys@linux.kernel.org
Subject: Re: New GPG key
Message-ID: <20240821-light-mottled-manatee-5bb88f@lemur>
References: <87o75pp2bt.fsf@mail.lhotse>
 <20240819-majestic-logical-galago-dcd95a@lemur>
 <874j7fu76o.fsf@mail.lhotse>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <874j7fu76o.fsf@mail.lhotse>

On Tue, Aug 20, 2024 at 02:52:47PM GMT, Michael Ellerman wrote:
> > For the record, can you follow up with the reason why you're replacing your
> > main key?
> 
> My old key is a combined signing/certification key, and it wasn't stored
> offline. AFAIK it's still secure, but I wanted to start fresh.
> 
> My new key was generated following the docs you wrote and has sub keys
> etc. with the master key and another signing key stored offline.

Key added to the keyring.

Thanks,
-K
