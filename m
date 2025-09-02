Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB3022156D
	for <keys@linux.kernel.org>; Tue,  2 Sep 2025 21:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756848635; cv=none; b=SReU+8vxqbgQbmk4E5xkCVxKeI4Oik9sWlqSQeDSILKo12Ld/KhYKxWmZQeFfNi2v1oIOADSrXRZxIRrgBZagUdgqQeBBctKlBZAlvPVpOhAqvpTuifLDyhJwZ+4L5E/yoHqq6E1F4uKCsomumQetAqeTiJwYUZSB1hmh42qfsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756848635; c=relaxed/simple;
	bh=vepH/W8uCsxTiffd8rGRkjg2dHC8r+1gjmUIgCwzzSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WE1WUD6QlyoxmElmGVAbllrxT6s0dFDtKWGPsXBCHnoCQG1l4vTacQoLOFzpZrrkUpI8PV0JNwNdEcTeYrCVNlOkG79IRkDMZg5ruyqHP/MFaVyRcMmq/2LWbA1v5k02xDRylK4Jes/ozNBxpcllQZNzxmswB//epDF3YM2QANY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=rLFYd9yM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="rLFYd9yM"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4F43C4CEED;
	Tue,  2 Sep 2025 21:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1756848634;
	bh=vepH/W8uCsxTiffd8rGRkjg2dHC8r+1gjmUIgCwzzSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rLFYd9yMSvFvTZEidpeztHXMDrEUm+Ses6x5Aq1jF/vCyuRwfyFcOZPz4u/eCoH6V
	 0/0O0QGmMoni3zNlI3Z/9XgkPGRC1wBCzJ3Kk8gnV7GRQrlwtiiGTgdjh7PFSMsKdy
	 VmmE9K8o9uziGCyj2mikFr4obubuNRa4o8K8MZb4=
Date: Tue, 2 Sep 2025 17:30:33 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key Alexander Sverdlin
Message-ID: <20250902-kickass-mottled-beluga-b95ada@lemur>
References: <278099da0521816dd9f1809aff40646ac2163ca3.camel@gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <278099da0521816dd9f1809aff40646ac2163ca3.camel@gmail.com>

On Sat, Aug 30, 2025 at 08:45:56PM +0200, Alexander Sverdlin wrote:
> Hello!
> 
> Please find my signed key for inclusion into the kernel keyring.

Updated, thanks.

-K
