Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E838A284B31
	for <keys@linux.kernel.org>; Thu, 10 Apr 2025 14:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744296196; cv=none; b=AYRY9cgWXEKlj13mFM5TFRj3exdYZrSiNydT8xNEcrDwj90ePYQLXC/P8fiDvrncVjrc0tAwovTfgVO4HEZI/FnDnnkcyO2wyTVK/4OgmZy8SgHAERMZnO44ywT9V6s/0JDm5dvQ8zKhXYoX/8dZ3s3QQRfFE8srVLpRzuRUCJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744296196; c=relaxed/simple;
	bh=4oZGs0Kgij35gwFBpxTjkUz8uma0blKQvUQ+5ulhgeM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ESB/952MGvcw/S/VtvROCu0Y7o+RoTtDUYWmVo3ecTTiFoiL9hLXPBEas7Djvq1J5J0alIcKXscqfRDlC5euJpJTgTz/rW+LIBVAfaaAE/WtAPYj9zKgO/t1Gv+i47xukcV6bBg7/xQUvtHASU5ouaftY26IWmV8Waxv7xUmn5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=PzPhufxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="PzPhufxc"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EA2FC4CEDD;
	Thu, 10 Apr 2025 14:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1744296195;
	bh=4oZGs0Kgij35gwFBpxTjkUz8uma0blKQvUQ+5ulhgeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PzPhufxcgNXvzFuBRI3Zt8t2F0M6+FYUbZNpvyjwcDyQlqlFwFBKPVPKyJjPuAov0
	 KuFQ7TM0HH+ZiLqqRzLO6dZ6oS777oCldaL+dTIiSYTvI4S2k/h3nD6BJnoCJr9SSl
	 R66eWJ0Qrf/eWpocfSsZnJu0gizVPpuooDND1qsk=
Date: Thu, 10 Apr 2025 10:43:14 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Theodore Ts'o <tytso@mit.edu>
Cc: keys@linux.kernel.org
Subject: Re: Update key expiration date for tytso@mit.edu
Message-ID: <20250410-simple-gregarious-beagle-126b4f@lemur>
References: <20250410143455.GA327426@mit.edu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250410143455.GA327426@mit.edu>

On Thu, Apr 10, 2025 at 10:34:55AM -0400, Theodore Ts'o wrote:

Updated, thanks.

-K
